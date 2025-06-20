require 'minitest/autorun'
require_relative '../calculate_median.rb'

class TestCalculateMedian < Minitest::Test
  def test_odd_length_list
    array = [1, 3, 5, 7, 9]
    expected = 5
    assert_equal expected, calculate_median(array)
  end

  def test_even_length_list
    array = [1, 3, 5, 7, 9, 11]
    expected = 6.0
    assert_equal expected, calculate_median(array)
  end

  def test_single_element_list
    array = [10]
    expected = 10
    assert_equal expected, calculate_median(array)
  end

  def test_negative_values
    array = [-10, -5, 0, 5, 10]
    expected = 0
    assert_equal expected, calculate_median(array)
  end

  def test_large_range_values
    array = [100, 200, 300, 400, 500, 600]
    expected = 350.0
    assert_equal expected, calculate_median(array)
  end

  def test_duplicate_values
    array = [1, 1, 2, 3, 4, 5, 5, 6, 7, 7]
    expected = 4.5
    assert_equal expected, calculate_median(array)
  end

  def test_unsorted_input
    array = [9, 1, 5, 7, 3]
    expected = 5
    assert_equal expected, calculate_median(array)
  end

  def test_large_odd_list
    array = (1..99).to_a
    expected = 50
    assert_equal expected, calculate_median(array)
  end

  def test_large_even_list
    array = (1..100).to_a
    expected = 50.5
    assert_equal expected, calculate_median(array)
  end
end
