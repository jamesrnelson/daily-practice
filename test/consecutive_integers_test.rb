require_relative 'test_helper'
require './lib/consecutive_integers'

class ConsecutiveIntegersTest < Minitest::Test
  def test_it_works
    nums = ConsecutiveIntegers.new

    expected = 3
    actual = nums.consecutive(21)

    assert_equal expected, actual
  end

  def test_it_works_again
    nums = ConsecutiveIntegers.new

    expected = 3
    actual = nums.consecutive(15)

    assert_equal expected, actual
  end
end
