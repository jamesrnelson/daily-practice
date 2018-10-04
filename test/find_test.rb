require_relative 'test_helper'
require './lib/find'

class FindTest < Minitest::Test
  def test_it_returns_yes
    finder = Find.new
    expected = 'YES'
    actual = finder.findNumber([1, 2, 3], 3)
    assert_equal expected, actual
  end

  def test_it_returns_no
    finder = Find.new
    expected = 'NO'
    actual = finder.findNumber([1, 2, 3], 5)
    assert_equal expected, actual
  end
end
