require 'minitest/autorun'
require_relative '../bubble_sort.rb'

class BubbleSortTest < Minitest::Test
  def test_bubble_sort
    assert_equal [1, 2, 3, 4, 5], bubble_sort([5, 4, 3, 2, 1])
    assert_equal [10, 100, 1000, 10000, 100000], bubble_sort([100, 10000, 10,100000,1000])
    assert_equal [1,2,3,4,5], bubble_sort([4, 3, 5, 1, 2])
  end
end
