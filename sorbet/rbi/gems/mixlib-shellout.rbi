# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/mixlib-shellout/all/mixlib-shellout.rbi
#
# mixlib-shellout-3.2.7

module Mixlib
end
class Mixlib::ShellOut
  def command; end
  def cwd; end
  def cwd=(arg0); end
  def domain; end
  def domain=(arg0); end
  def elevated; end
  def elevated=(arg0); end
  def environment; end
  def environment=(arg0); end
  def error!; end
  def error?; end
  def execution_time; end
  def exitstatus; end
  def format_for_exception; end
  def gid; end
  def group; end
  def group=(arg0); end
  def initialize(*command_args); end
  def input; end
  def input=(arg0); end
  def inspect; end
  def invalid!(msg = nil); end
  def live_stderr; end
  def live_stderr=(arg0); end
  def live_stdout; end
  def live_stdout=(arg0); end
  def live_stream; end
  def live_stream=(stream); end
  def log_level; end
  def log_level=(arg0); end
  def log_tag; end
  def log_tag=(arg0); end
  def logger; end
  def logger=(arg0); end
  def login; end
  def login=(arg0); end
  def parse_options(opts); end
  def password; end
  def password=(arg0); end
  def process_status_pipe; end
  def run_command; end
  def sensitive; end
  def sensitive=(arg0); end
  def status; end
  def stderr; end
  def stderr_pipe; end
  def stdin_pipe; end
  def stdout; end
  def stdout_pipe; end
  def timeout; end
  def timeout=(arg0); end
  def uid; end
  def umask; end
  def umask=(new_umask); end
  def user; end
  def user=(arg0); end
  def valid_exit_codes; end
  def valid_exit_codes=(arg0); end
  def validate_options(opts); end
  def with_logon; end
  def with_logon=(arg0); end
  include Mixlib::ShellOut::Unix
end
class Mixlib::ShellOut::Error < RuntimeError
end
class Mixlib::ShellOut::ShellCommandFailed < Mixlib::ShellOut::Error
end
class Mixlib::ShellOut::CommandTimeout < Mixlib::ShellOut::Error
end
class Mixlib::ShellOut::InvalidCommandOption < Mixlib::ShellOut::Error
end
class Mixlib::ShellOut::EmptyWindowsCommand < Mixlib::ShellOut::ShellCommandFailed
end
module Mixlib::ShellOut::Unix
  def all_seconderies; end
  def attempt_buffer_read; end
  def attempt_reap; end
  def child_pgid; end
  def child_process_status; end
  def child_stderr; end
  def child_stdin; end
  def child_stdout; end
  def close_all_pipes; end
  def configure_parent_process_file_descriptors; end
  def configure_subprocess_file_descriptors; end
  def fork_subprocess; end
  def initialize_ipc; end
  def logon_environment; end
  def open_pipes; end
  def process_environment; end
  def propagate_pre_exec_failure; end
  def read_process_status_to_buffer; end
  def read_stderr_to_buffer; end
  def read_stdout_to_buffer; end
  def reap; end
  def reap_errant_child; end
  def run_command; end
  def set_cwd; end
  def set_environment; end
  def set_group; end
  def set_secondarygroups; end
  def set_umask; end
  def set_user; end
  def sgids; end
  def should_reap?; end
  def using_login?; end
  def validate_options(opts); end
  def write_to_child_stdin; end
end