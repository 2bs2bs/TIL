require 'minitest/autorun'
require_relative '../find_duplicate.rb'

class InsertionSortTest < Minitest::Test
  def test_one_duplicate
    list1 = [1, 3, 5, 7, 9]
    list2 = [2, 4, 6, 8, 10, 7]
    assert_equal [7], find_duplicate(list1, list2)
  end

  def test_no_duplicate
    list1 = [1, 2, 3, 4, 5]
    list2 = [6, 7, 8, 9, 10]
    assert_equal [], find_duplicate(list1, list2)
  end

  def test_list1_array_is_null
    list1 = []
    list2 = [2, 4, 6, 8, 10]
    assert_equal [], find_duplicate(list1, list2)
  end

  def test_duplicates
    list1 = [1, 2, 3, 4, 4, 5]
    list2 = [4, 5, 6, 6, 7]
    assert_equal [4,5], find_duplicate(list1, list2)
  end
end