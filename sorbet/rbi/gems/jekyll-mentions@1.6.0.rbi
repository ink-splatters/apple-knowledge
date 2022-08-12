# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `jekyll-mentions` gem.
# Please instead update this file by running `bin/tapioca gem jekyll-mentions`.

# Public: Methods that generate a URL for a resource such as a Post or a Page.
#
# Examples
#
#   URL.new({
#     :template => /:categories/:title.html",
#     :placeholders => {:categories => "ruby", :title => "something"}
#   }).to_s
#
# source://jekyll-mentions-1.6.0/lib/jekyll-mentions.rb:6
module Jekyll
  class << self
    # Public: Generate a Jekyll configuration Hash by merging the default
    # options with anything in _config.yml, and adding the given options on top.
    #
    # override - A Hash of config directives that override any options in both
    #            the defaults and the config file.
    #            See Jekyll::Configuration::DEFAULTS for a
    #            list of option names and their defaults.
    #
    # Returns the final configuration Hash.
    #
    # source://jekyll-4.2.2/lib/jekyll.rb:114
    def configuration(override = T.unsafe(nil)); end

    # Public: Tells you which Jekyll environment you are building in so you can skip tasks
    # if you need to.  This is useful when doing expensive compression tasks on css and
    # images and allows you to skip that when working in development.
    #
    # source://jekyll-4.2.2/lib/jekyll.rb:101
    def env; end

    # Public: Fetch the logger instance for this Jekyll process.
    #
    # Returns the LogAdapter instance.
    #
    # source://jekyll-4.2.2/lib/jekyll.rb:145
    def logger; end

    # Public: Set the log writer.
    #         New log writer must respond to the same methods
    #         as Ruby's interal Logger.
    #
    # writer - the new Logger-compatible log transport
    #
    # Returns the new logger.
    #
    # source://jekyll-4.2.2/lib/jekyll.rb:156
    def logger=(writer); end

    # Public: Ensures the questionable path is prefixed with the base directory
    #         and prepends the questionable path with the base directory if false.
    #
    # base_directory - the directory with which to prefix the questionable path
    # questionable_path - the path we're unsure about, and want prefixed
    #
    # Returns the sanitized path.
    #
    # source://jekyll-4.2.2/lib/jekyll.rb:174
    def sanitized_path(base_directory, questionable_path); end

    # Public: Set the TZ environment variable to use the timezone specified
    #
    # timezone - the IANA Time Zone
    #
    # Returns nothing
    #
    # source://jekyll-4.2.2/lib/jekyll.rb:133
    def set_timezone(timezone); end

    # Public: An array of sites
    #
    # Returns the Jekyll sites created.
    #
    # source://jekyll-4.2.2/lib/jekyll.rb:163
    def sites; end
  end
end

# source://jekyll-mentions-1.6.0/lib/jekyll-mentions.rb:7
class Jekyll::Mentions
  class << self
    # Public: Create or fetch the filter for the given {{src}} base URL.
    #
    # src - the base URL (e.g. https://github.com)
    #
    # Returns an HTML::Pipeline instance for the given base URL.
    #
    # source://jekyll-mentions-1.6.0/lib/jekyll-mentions.rb:47
    def filter_with_mention(src); end

    # Public: Filters hash where the key is the mention base URL.
    # Effectively a cache.
    #
    # source://jekyll-mentions-1.6.0/lib/jekyll-mentions.rb:59
    def filters; end

    # Public: Calculate the base URL to use for mentioning.
    #
    # The custom base URL can be defined in either the site config or a document's
    # front matter as `jekyll-mentions.base_url` or `jekyll-mentions`, and must be
    # a valid URL (i.e. it must include a protocol and valid domain).
    # It should _not_ have a trailing slash.
    #
    # config - The effective configuration that includes configurations for mentions.
    #
    # Returns a URL to use as the base URL for mentions.
    # Defaults to the https://github.com.
    #
    # source://jekyll-mentions-1.6.0/lib/jekyll-mentions.rb:74
    def mention_base(config = T.unsafe(nil)); end

    # source://jekyll-mentions-1.6.0/lib/jekyll-mentions.rb:53
    def mention_username_pattern; end

    # Public: Defines the conditions for a document to be mentionable.
    #
    # doc - the Jekyll::Document or Jekyll::Page
    #
    # Returns true if the doc is written & is HTML.
    #
    # @return [Boolean]
    #
    # source://jekyll-mentions-1.6.0/lib/jekyll-mentions.rb:95
    def mentionable?(doc); end

    # source://jekyll-mentions-1.6.0/lib/jekyll-mentions.rb:17
    def mentionify(doc); end

    private

    # source://jekyll-mentions-1.6.0/lib/jekyll-mentions.rb:114
    def default_mention_base; end

    # source://jekyll-mentions-1.6.0/lib/jekyll-mentions.rb:103
    def filter_regex; end
  end
end

# source://jekyll-mentions-1.6.0/lib/jekyll-mentions.rb:9
Jekyll::Mentions::BODY_START_TAG = T.let(T.unsafe(nil), String)

# source://jekyll-mentions-1.6.0/lib/jekyll-mentions.rb:8
Jekyll::Mentions::GITHUB_DOT_COM = T.let(T.unsafe(nil), String)

# source://jekyll-mentions-1.6.0/lib/jekyll-mentions.rb:13
class Jekyll::Mentions::InvalidJekyllMentionConfig < ::Jekyll::Errors::FatalException; end

# source://jekyll-mentions-1.6.0/lib/jekyll-mentions.rb:11
Jekyll::Mentions::OPENING_BODY_TAG_REGEX = T.let(T.unsafe(nil), Regexp)

# source://jekyll-4.2.2/lib/jekyll/version.rb:4
Jekyll::VERSION = T.let(T.unsafe(nil), String)
