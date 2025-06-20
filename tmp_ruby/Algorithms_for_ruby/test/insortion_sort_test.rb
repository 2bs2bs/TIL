require 'minitest/autorun'
require_relative '../insortion_sort.rb'

class InsertionSortTest < Minitest::Test
  def test_insertion_sort_with_random_array
    assert_equal [1, 2, 3, 4, 5], insertion_sort([4, 3, 5, 1, 2])
  end

  def test_insertion_sort_with_empty_array
    assert_equal [], insertion_sort([])
  end

  def test_insertion_sort_with_already_sorted_array
    assert_equal [1, 2, 3, 4, 5], insertion_sort([1, 2, 3, 4, 5])
  end
end