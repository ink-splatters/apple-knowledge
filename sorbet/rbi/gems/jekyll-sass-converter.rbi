# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/jekyll-sass-converter/all/jekyll-sass-converter.rbi
#
# jekyll-sass-converter-2.2.0

module JekyllSassConverter
end
module Jekyll
end
class Jekyll::SourceMapPage < Jekyll::Page
  def asset_file?; end
  def ext; end
  def initialize(css_page); end
  def inspect; end
  def render_with_liquid?; end
  def source_map(map); end
end
module Jekyll::Converters
end
class Jekyll::Converters::Scss < Jekyll::Converter
  def add_charset?; end
  def allow_caching?; end
  def associate_page(page); end
  def associate_page_failed?; end
  def convert(content); end
  def dissociate_page(page); end
  def file_url_from_path(path); end
  def filename; end
  def jekyll_sass_configuration; end
  def line_comments_option; end
  def matches(ext); end
  def output_ext(_ext); end
  def output_path; end
  def safe?; end
  def sass_build_configuration_options(overrides); end
  def sass_configs; end
  def sass_convert(content); end
  def sass_dir; end
  def sass_dir_relative_to_site_source; end
  def sass_embedded_config; end
  def sass_embedded_convert(content); end
  def sass_embedded_generate_source_map(source_map); end
  def sass_file_url; end
  def sass_generate_source_map(engine); end
  def sass_implementation; end
  def sass_load_paths; end
  def sass_page; end
  def sass_style; end
  def self.inherited(const_); end
  def site; end
  def site_source; end
  def site_source_relative_from_pwd; end
  def site_source_url; end
  def source_map_file; end
  def source_map_page; end
  def sourcemap_option; end
  def sourcemap_required?; end
  def syntax; end
  def user_sass_load_paths; end
end
class Jekyll::Converters::Scss::SyntaxError < ArgumentError
end
class Jekyll::Converters::Sass < Jekyll::Converters::Scss
  def syntax; end
end