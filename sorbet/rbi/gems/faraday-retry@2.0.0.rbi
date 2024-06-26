# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `faraday-retry` gem.
# Please instead update this file by running `bin/tapioca gem faraday-retry`.

# Faraday namespace.
module Faraday
  class << self
    # @overload default_adapter
    # @overload default_adapter=
    def default_adapter; end

    # Documented elsewhere, see default_adapter reader
    def default_adapter=(adapter); end

    # Option for the default_adapter
    #   @return [Hash] default_adapter options
    def default_adapter_options; end

    # Option for the default_adapter
    #   @return [Hash] default_adapter options
    def default_adapter_options=(_arg0); end

    # @overload default_connection
    # @overload default_connection=
    def default_connection; end

    # Documented below, see default_connection
    def default_connection=(_arg0); end

    # Gets the default connection options used when calling {Faraday#new}.
    #
    # @return [Faraday::ConnectionOptions]
    def default_connection_options; end

    # Sets the default options used when calling {Faraday#new}.
    #
    # @param options [Hash, Faraday::ConnectionOptions]
    def default_connection_options=(options); end

    # Tells Faraday to ignore the environment proxy (http_proxy).
    # Defaults to `false`.
    #
    # @return [Boolean]
    def ignore_env_proxy; end

    # Tells Faraday to ignore the environment proxy (http_proxy).
    # Defaults to `false`.
    #
    # @return [Boolean]
    def ignore_env_proxy=(_arg0); end

    # Gets or sets the path that the Faraday libs are loaded from.
    #
    # @return [String]
    def lib_path; end

    # Gets or sets the path that the Faraday libs are loaded from.
    #
    # @return [String]
    def lib_path=(_arg0); end

    # Initializes a new {Connection}.
    #
    # @example With an URL argument
    #   Faraday.new 'http://faraday.com'
    #   # => Faraday::Connection to http://faraday.com
    # @example With everything in an options hash
    #   Faraday.new url: 'http://faraday.com',
    #   params: { page: 1 }
    #   # => Faraday::Connection to http://faraday.com?page=1
    # @example With an URL argument and an options hash
    #   Faraday.new 'http://faraday.com', params: { page: 1 }
    #   # => Faraday::Connection to http://faraday.com?page=1
    # @option options
    # @option options
    # @option options
    # @option options
    # @option options
    # @option options
    # @param url [String, Hash] The optional String base URL to use as a prefix
    #   for all requests.  Can also be the options Hash. Any of these
    #   values will be set on every request made, unless overridden
    #   for a specific request.
    # @param options [Hash]
    # @return [Faraday::Connection]
    def new(url = T.unsafe(nil), options = T.unsafe(nil), &block); end

    # @return [Boolean]
    def respond_to_missing?(symbol, include_private = T.unsafe(nil)); end

    # The root path that Faraday is being loaded from.
    #
    # This is the root from where the libraries are auto-loaded.
    #
    # @return [String]
    def root_path; end

    # The root path that Faraday is being loaded from.
    #
    # This is the root from where the libraries are auto-loaded.
    #
    # @return [String]
    def root_path=(_arg0); end

    private

    # Internal: Proxies method calls on the Faraday constant to
    # .default_connection.
    def method_missing(name, *args, &block); end
  end
end

Faraday::CONTENT_TYPE = T.let(T.unsafe(nil), String)
Faraday::CompositeReadIO = Faraday::Multipart::CompositeReadIO

# Aliases for Faraday v1, these are all deprecated and will be removed in v2 of this middleware
Faraday::FilePart = Multipart::Post::UploadIO

Faraday::METHODS_WITH_BODY = T.let(T.unsafe(nil), Array)
Faraday::METHODS_WITH_QUERY = T.let(T.unsafe(nil), Array)
Faraday::ParamPart = Faraday::Multipart::ParamPart
Faraday::Parts = Multipart::Post::Parts

# Exception used to control the Retry middleware.
class Faraday::RetriableResponse < ::Faraday::Error; end

# Middleware main module.
module Faraday::Retry; end

# This class provides the main implementation for your middleware.
# Your middleware can implement any of the following methods:
# * on_request - called when the request is being prepared
# * on_complete - called when the response is being processed
#
# Optionally, you can also override the following methods from Faraday::Middleware
# * initialize(app, options = {}) - the initializer method
# * call(env) - the main middleware invocation method.
#   This already calls on_request and on_complete, so you normally don't need to override it.
#   You may need to in case you need to "wrap" the request or need more control
#   (see "retry" middleware: https://github.com/lostisland/faraday/blob/main/lib/faraday/request/retry.rb#L142).
#   IMPORTANT: Remember to call `@app.call(env)` or `super` to not interrupt the middleware chain!
class Faraday::Retry::Middleware < ::Faraday::Middleware
  # @option options
  # @option options
  # @option options
  # @option options
  # @option options
  # @option options
  # @option options
  # @option options
  # @option options
  # @option options
  # @param app [#call]
  # @param options [Hash]
  # @return [Middleware] a new instance of Middleware
  def initialize(app, options = T.unsafe(nil)); end

  # An exception matcher for the rescue clause can usually be any object
  # that responds to `===`, but for Ruby 1.8 it has to be a Class or Module.
  #
  # @api private
  # @param exceptions [Array]
  # @return [Module] an exception matcher
  def build_exception_matcher(exceptions); end

  def calculate_sleep_amount(retries, env); end

  # @param env [Faraday::Env]
  def call(env); end

  private

  # RFC for RateLimit Header Fields for HTTP:
  # https://tools.ietf.org/id/draft-polli-ratelimit-headers-00.html#rfc.section.3.3
  def calculate_rate_limit_reset(env); end

  # MDN spec for Retry-After header:
  # https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Retry-After
  def calculate_retry_after(env); end

  def calculate_retry_interval(retries); end
  def parse_retry_header(env, header); end

  # @return [Boolean]
  def retry_request?(env, exception); end

  def rewind_files(body); end
end

Faraday::Retry::Middleware::DEFAULT_EXCEPTIONS = T.let(T.unsafe(nil), Array)
Faraday::Retry::Middleware::IDEMPOTENT_METHODS = T.let(T.unsafe(nil), Array)

# Options contains the configurable parameters for the Retry middleware.
class Faraday::Retry::Middleware::Options < ::Faraday::Options
  def backoff_factor; end
  def exceptions; end
  def interval; end
  def interval_randomness; end
  def max; end
  def max_interval; end
  def methods; end
  def retry_block; end
  def retry_if; end
  def retry_statuses; end

  class << self
    def from(value); end
  end
end

Faraday::Retry::Middleware::Options::DEFAULT_CHECK = T.let(T.unsafe(nil), Proc)
Faraday::Retry::VERSION = T.let(T.unsafe(nil), String)

# multipart-post v2.2.0 introduces a new class hierarchy for classes like Parts and UploadIO
# For backwards compatibility, detect the gem version and use the right class
Faraday::UploadIO = Multipart::Post::UploadIO

Faraday::VERSION = T.let(T.unsafe(nil), String)
