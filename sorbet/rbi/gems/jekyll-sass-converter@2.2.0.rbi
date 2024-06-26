# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `jekyll-sass-converter` gem.
# Please instead update this file by running `bin/tapioca gem jekyll-sass-converter`.

# Public: Methods that generate a URL for a resource such as a Post or a Page.
#
# Examples
#
#   URL.new({
#     :template => /:categories/:title.html",
#     :placeholders => {:categories => "ruby", :title => "something"}
#   }).to_s
#
# source://jekyll-sass-converter-2.2.0/lib/jekyll/source_map_page.rb:3
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

# source://jekyll-sass-converter-2.2.0/lib/jekyll/converters/scss.rb:8
module Jekyll::Converters; end

# source://jekyll-sass-converter-2.2.0/lib/jekyll/converters/sass.rb:9
class Jekyll::Converters::Sass < ::Jekyll::Converters::Scss
  # source://jekyll-sass-converter-2.2.0/lib/jekyll/converters/sass.rb:15
  def syntax; end
end

# source://jekyll-sass-converter-2.2.0/lib/jekyll/converters/sass.rb:10
Jekyll::Converters::Sass::EXTENSION_PATTERN = T.let(T.unsafe(nil), Regexp)

# source://jekyll-sass-converter-2.2.0/lib/jekyll/converters/scss.rb:9
class Jekyll::Converters::Scss < ::Jekyll::Converter
  # @return [Boolean]
  #
  # source://jekyll-sass-converter-2.2.0/lib/jekyll/converters/scss.rb:162
  def add_charset?; end

  # @return [Boolean]
  #
  # source://jekyll-sass-converter-2.2.0/lib/jekyll/converters/scss.rb:158
  def allow_caching?; end

  # Associate this Converter with the "page" object that manages input and output files for
  # this converter.
  #
  # Note: changing the associated sass_page during the live time of this Converter instance
  # may result in inconsistent results.
  #
  # @param page [Jekyll:Page] The sass_page for which this object acts as converter.
  #
  # source://jekyll-sass-converter-2.2.0/lib/jekyll/converters/scss.rb:48
  def associate_page(page); end

  # source://jekyll-sass-converter-2.2.0/lib/jekyll/converters/scss.rb:180
  def convert(content); end

  # Dissociate this Converter with the "page" object.
  #
  # @param page [Jekyll:Page] The sass_page for which this object has acted as a converter.
  #
  # source://jekyll-sass-converter-2.2.0/lib/jekyll/converters/scss.rb:61
  def dissociate_page(page); end

  # source://jekyll-sass-converter-2.2.0/lib/jekyll/converters/scss.rb:84
  def jekyll_sass_configuration; end

  # source://jekyll-sass-converter-2.2.0/lib/jekyll/converters/scss.rb:72
  def matches(ext); end

  # source://jekyll-sass-converter-2.2.0/lib/jekyll/converters/scss.rb:76
  def output_ext(_ext); end

  # @return [Boolean]
  #
  # source://jekyll-sass-converter-2.2.0/lib/jekyll/converters/scss.rb:80
  def safe?; end

  # source://jekyll-sass-converter-2.2.0/lib/jekyll/converters/scss.rb:94
  def sass_build_configuration_options(overrides); end

  # source://jekyll-sass-converter-2.2.0/lib/jekyll/converters/scss.rb:166
  def sass_configs; end

  # source://jekyll-sass-converter-2.2.0/lib/jekyll/converters/scss.rb:106
  def sass_dir; end

  # source://jekyll-sass-converter-2.2.0/lib/jekyll/converters/scss.rb:129
  def sass_dir_relative_to_site_source; end

  # source://jekyll-sass-converter-2.2.0/lib/jekyll/converters/scss.rb:112
  def sass_implementation; end

  # source://jekyll-sass-converter-2.2.0/lib/jekyll/converters/scss.rb:136
  def sass_load_paths; end

  # source://jekyll-sass-converter-2.2.0/lib/jekyll/converters/scss.rb:117
  def sass_style; end

  # source://jekyll-sass-converter-2.2.0/lib/jekyll/converters/scss.rb:102
  def syntax; end

  # source://jekyll-sass-converter-2.2.0/lib/jekyll/converters/scss.rb:125
  def user_sass_load_paths; end

  private

  # @return [Boolean]
  #
  # source://jekyll-sass-converter-2.2.0/lib/jekyll/converters/scss.rb:229
  def associate_page_failed?; end

  # source://jekyll-sass-converter-2.2.0/lib/jekyll/converters/scss.rb:347
  def file_url_from_path(path); end

  # The name of the input scss (or sass) file. This information will be used for error
  # reporting and will written into the source map file as main source.
  #
  # Returns the name of the input file or "stdin" if #associate_page failed
  #
  # source://jekyll-sass-converter-2.2.0/lib/jekyll/converters/scss.rb:237
  def filename; end

  # The value of the `line_comments` option.
  # When set to `true` causes the line number and filename of the source be emitted into the
  # compiled CSS-file. Useful for debugging when the source-map is not available.
  #
  # Returns the value of the `line_comments`-option chosen by the user or 'false' by default.
  #
  # source://jekyll-sass-converter-2.2.0/lib/jekyll/converters/scss.rb:255
  def line_comments_option; end

  # The name of the generated css file. This information will be written into the source map
  # file as a backward reference to the input.
  #
  # Returns the name of the css file or "stdin.css" if #associate_page failed
  #
  # source://jekyll-sass-converter-2.2.0/lib/jekyll/converters/scss.rb:282
  def output_path; end

  # source://jekyll-sass-converter-2.2.0/lib/jekyll/converters/scss.rb:192
  def sass_convert(content); end

  # source://jekyll-sass-converter-2.2.0/lib/jekyll/converters/scss.rb:203
  def sass_embedded_config; end

  # source://jekyll-sass-converter-2.2.0/lib/jekyll/converters/scss.rb:214
  def sass_embedded_convert(content); end

  # Reads the source-map and adds it to the source-map-page.
  #
  # source://jekyll-sass-converter-2.2.0/lib/jekyll/converters/scss.rb:317
  def sass_embedded_generate_source_map(source_map); end

  # The URL of the input scss (or sass) file. This information will be used for error reporting.
  #
  # source://jekyll-sass-converter-2.2.0/lib/jekyll/converters/scss.rb:244
  def sass_file_url; end

  # Reads the source-map from the engine and adds it to the source-map-page.
  #
  # @param engine [::SassC::Engine] The sass Compiler engine.
  #
  # source://jekyll-sass-converter-2.2.0/lib/jekyll/converters/scss.rb:307
  def sass_generate_source_map(engine); end

  # The Page instance for which this object acts as a converter.
  #
  # source://jekyll-sass-converter-2.2.0/lib/jekyll/converters/scss.rb:227
  def sass_page; end

  # source://jekyll-sass-converter-2.2.0/lib/jekyll/converters/scss.rb:330
  def site; end

  # source://jekyll-sass-converter-2.2.0/lib/jekyll/converters/scss.rb:334
  def site_source; end

  # source://jekyll-sass-converter-2.2.0/lib/jekyll/converters/scss.rb:338
  def site_source_relative_from_pwd; end

  # source://jekyll-sass-converter-2.2.0/lib/jekyll/converters/scss.rb:343
  def site_source_url; end

  # The name of the generated source map file. This information will be written into the
  # css file to reference to the source map.
  #
  # Returns the name of the css file or "" if #associate_page failed
  #
  # source://jekyll-sass-converter-2.2.0/lib/jekyll/converters/scss.rb:292
  def source_map_file; end

  # source://jekyll-sass-converter-2.2.0/lib/jekyll/converters/scss.rb:298
  def source_map_page; end

  # The value of the `sourcemap` option chosen by the user.
  #
  # This option controls when sourcemaps shall be generated or not.
  #
  # Returns the value of the `sourcemap`-option chosen by the user or ':always' by default.
  #
  # source://jekyll-sass-converter-2.2.0/lib/jekyll/converters/scss.rb:264
  def sourcemap_option; end

  # Determines whether a sourcemap shall be generated or not.
  #
  # Returns `true` if a sourcemap shall be generated, `false` otherwise.
  #
  # @return [Boolean]
  #
  # source://jekyll-sass-converter-2.2.0/lib/jekyll/converters/scss.rb:271
  def sourcemap_required?; end

  class << self
    # source://jekyll-4.2.2/lib/jekyll/plugin.rb:24
    def inherited(const_); end
  end
end

# source://jekyll-sass-converter-2.2.0/lib/jekyll/converters/scss.rb:38
Jekyll::Converters::Scss::ALLOWED_IMPLEMENTATIONS = T.let(T.unsafe(nil), Array)

# source://jekyll-sass-converter-2.2.0/lib/jekyll/converters/scss.rb:39
Jekyll::Converters::Scss::ALLOWED_STYLES = T.let(T.unsafe(nil), Array)

# source://jekyll-sass-converter-2.2.0/lib/jekyll/converters/scss.rb:10
Jekyll::Converters::Scss::BYTE_ORDER_MARK = T.let(T.unsafe(nil), Regexp)

# source://jekyll-sass-converter-2.2.0/lib/jekyll/converters/scss.rb:11
Jekyll::Converters::Scss::EXTENSION_PATTERN = T.let(T.unsafe(nil), Regexp)

# source://jekyll-sass-converter-2.2.0/lib/jekyll/converters/scss.rb:13
class Jekyll::Converters::Scss::SyntaxError < ::ArgumentError; end

# A Jekyll::Page subclass to manage the source map file associated with
# a given scss / sass page.
#
# source://jekyll-sass-converter-2.2.0/lib/jekyll/source_map_page.rb:9
class Jekyll::SourceMapPage < ::Jekyll::Page
  # Initialize a new SourceMapPage.
  #
  # @param css_page [Jekyll::Page] The Page object that manages the css file.
  # @return [SourceMapPage] a new instance of SourceMapPage
  #
  # source://jekyll-sass-converter-2.2.0/lib/jekyll/source_map_page.rb:10
  def initialize(css_page); end

  # @return [Boolean]
  #
  # source://jekyll-sass-converter-2.2.0/lib/jekyll/source_map_page.rb:28
  def asset_file?; end

  # source://jekyll-sass-converter-2.2.0/lib/jekyll/source_map_page.rb:24
  def ext; end

  # @return[String] the object as a debug String.
  #
  # source://jekyll-sass-converter-2.2.0/lib/jekyll/source_map_page.rb:37
  def inspect; end

  # @return [Boolean]
  #
  # source://jekyll-sass-converter-2.2.0/lib/jekyll/source_map_page.rb:32
  def render_with_liquid?; end

  # source://jekyll-sass-converter-2.2.0/lib/jekyll/source_map_page.rb:20
  def source_map(map); end
end

# source://jekyll-4.2.2/lib/jekyll/version.rb:4
Jekyll::VERSION = T.let(T.unsafe(nil), String)

# source://jekyll-sass-converter-2.2.0/lib/jekyll-sass-converter/version.rb:3
module JekyllSassConverter; end

# source://jekyll-sass-converter-2.2.0/lib/jekyll-sass-converter/version.rb:4
JekyllSassConverter::VERSION = T.let(T.unsafe(nil), String)
