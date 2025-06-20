require 'minitest/autorun'
require_relative '../reverse_string'

class ReverseStringTest < Minitest::Test
  def test_reverse_string
    test = "test"
    assert_equal "tset", reverse_string(test)
  end
end
