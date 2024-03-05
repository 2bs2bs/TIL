require 'minitest/autorun'
require_relative '../lib/log_formatter'

class LogFormatterTest < Minitest::Test
  def test_format_log
    LogFormatter.format_log
  end
end