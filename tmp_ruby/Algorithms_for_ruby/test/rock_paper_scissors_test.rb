require 'minitest/autorun'
require_relative '../rock_paper_scissors' # 実際のファイル名に応じて変更

class TestCalculateWins < Minitest::Test
  def test_win?
    # Rock vs. Scissors -> Rock wins
    assert_equal(true, win?("G", "C"))

    # Paper vs. Rock -> Paper wins
    assert_equal(true, win?("P", "G"))

    # Scissors vs. Paper -> Scissors wins
    assert_equal(true, win?("C", "P"))

    # Rock vs. Paper -> Paper wins
    assert_equal(false, win?("G", "P"))

    # Paper vs. Scissors -> Scissors wins
    assert_equal(false, win?("P", "C"))

    # Scissors vs. Rock -> Rock wins
    assert_equal(false, win?("C", "G"))
  end
end