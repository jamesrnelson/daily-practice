require_relative 'test_helper'
require './lib/odd_nums'

class OddNumsTest < Minitest::Test
  def test_it_works
    nums = OddNums.new
    expected = [3, 5]
    actual = nums.oddNumbers(2, 5)
    assert_equal expected, actual
  end
end
