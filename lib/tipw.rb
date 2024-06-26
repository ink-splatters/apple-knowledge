#!/usr/bin/env ruby
# frozen_string_literal: true

require_relative 'common'
require 'mediawiki_api'
require 'wikicloth'
require 'sorbet-runtime'

# Module for interacting with theiphonewiki.com
module TIPW
  extend T::Sig
  SYNC_DATAFILE = AppleData::DataFile.new 'tipw_sync'
  CLIENT = MediawikiApi::Client.new 'https://www.theapplewiki.com/api.php', log: false, index_url: 'https://theapplewiki.com/index.php'

  KEY_VALUE_PAIR = /^\s\|\s(\w+)\s+=\s(.*)$/

  sig { params(category_name: String).returns(T::Array[String]) }
  def self.get_pages_in_category(category_name)
    continue = true
    results = []

    while continue
      args = {
        list: :categorymembers,
        cmtitle: category_name,
        cmlimit: 500
      }
      args[:cmcontinue] = continue unless continue.is_a? TrueClass
      pages = CLIENT.query args

      results.append(*pages.data['categorymembers'])
      puts "Added #{pages.data['categorymembers'].length} items"
      continue = pages['continue'] ? pages['continue']['cmcontinue'] : false
    end

    results
  end

  sig { params(title: String).returns(String) }
  def self.get_page_content(title)
    response = CLIENT.get_wikitext(title)
    unless response.status == 200
      puts "Got non-200 response (#{response.status}) when getting content for '#{title}'"
      return nil
    end

    response.body
  end

  # A object representing a parsed TIPW firmware key page
  class TIPWKeyPage
    extend T::Sig

    KEY_TEMPLATE_REGEX = /\{\{keys(.*)}}/m
    DESCRIPTORS = %w[Version Build Device Codename Baseband DownloadURL].freeze
    IGNORE_VALUES = ['not encrypted', 'unknown'].freeze

    sig { params(content: T.nilable(String)).void }
    def initialize(content = nil)
      key_match = KEY_TEMPLATE_REGEX.match(content)[1]
      @descriptors = {}
      @keybags = {}
      process_pairs(key_match.scan(KEY_VALUE_PAIR).to_h { |match| [match[0], match[1]] })
      cleanup_useless
    end

    sig { returns(Hash) }
    def to_h
      descriptors = @descriptors.transform_keys(&:underscore)
      descriptors.merge({ 'keybags' => @keybags })
    end

    TYPE_MAPPING = {
      1 => 'production',
      2 => 'development'
    }.freeze

    private

    sig { params(name: String, type: String, value: T.nilable(String)).returns(T.nilable(String)) }
    def append_key(name, type, value)
      return if IGNORE_VALUES.include?(value.downcase)

      @keybags[name] ||= {}
      @keybags[name][type.downcase] = value.downcase unless IGNORE_VALUES.include?(value)
    end

    sig { params(name: String, keybag: String).returns(T.nilable(Hash)) }
    def append_keybag(name, keybag)
      keybag = keybag.downcase
      return if IGNORE_VALUES.include?(keybag)

      iv, key, bagtype = keypair_to_iv_key(keybag.delete_suffix('xt'))
      @keybags[name] ||= {}
      @keybags[name]['keybags'] = {
        bagtype => {
          'encrypted_iv' => iv,
          'encrypted_key' => key
        }
      }
    end

    sig { params(keypair: String).returns(T.nilable(T::Array[String])) }
    def keypair_to_iv_key(keypair)
      case keypair.length
      when 97
        [keypair[1..64], keypair[65..], TYPE_MAPPING[keypair[0].to_i]]
      when 96
        [keypair[0..63], keypair[64..], 'production']
      when 95
        keypair = "0#{keypair}"
        [keypair[0..63], keypair[64..], 'production']
      when 48
        [keypair[0..31], keypair[32..], 'production']
      when 36
        [keypair[0..23], keypair[24..], 'production']
      when 0
        nil
      else
        raise "Unknown key type '#{keypair}' (length: #{keypair.length})"
      end
    end

    sig { params(pairs: T::Hash[String, String]).returns(T::Hash[String, String]) }
    def process_pairs(pairs)
      pairs.each do |key, value|
        case key
        when *DESCRIPTORS
          @descriptors[key] = value
        when /(.*)KBAG/
          append_keybag Regexp.last_match(1), value
        when /(.*)(Key|IV)/
          append_key Regexp.last_match(1), Regexp.last_match(2), value
        else
          @keybags[key] ||= {}
          @keybags[key]['filename'] = value.strip if value
        end
      end
    end

    def cleanup_useless
      @keybags.reject! { |_key, value| value.keys == ['filename'] }
    end
  end

  # Parser for TIPW codenames document
  class TIPWCodenames
    extend T::Sig
    sig { void }
    def initialize
      @content = CLIENT.get_wikitext('Firmware Codenames').body
      @parsed = WikiCloth::Parser.new data: @content
    end
  end
end
