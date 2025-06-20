require 'minitest/autorun'
require_relative '../selection_sort.rb'

class SelectionSortTest < Minitest::Test
  def test_selection_sort
    assert_equal [1, 2, 3, 4, 5], selection_sort([4, 3, 5, 1, 2])
    assert_equal [10, 100, 1000, 10000, 100000], selection_sort([100, 10000, 10,100000,1000])
  end

  def test_selection_sort_with_empty_array
    assert_equal [], selection_sort([])
  end

  def test_selection_sort_with_already_sorted_array
    assert_equal [1, 2, 3, 4, 5], selection_sort([1, 2, 3, 4, 5])
  end

  def test_selection_sort_with_reverse_sorted_array
    assert_equal [1, 2, 3, 4, 5], selection_sort([5, 4, 3, 2, 1])
  end

  def test_selection_sort_with_japanise
    assert_equal ["あ","い","う","え","お"], selection_sort(["う","い","え","お","あ"])
  end
end