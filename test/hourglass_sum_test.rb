require_relative 'test_helper'
require './lib/hourglass_sum.rb'

class PalindromeTest < Minitest::Test
  def test_it_finds_the_largest_sum
    arr = [
      [1, 1, 1, 0, 0, 0],
      [0, 1, 0, 0, 0, 0],
      [1, 1, 1, 0, 0, 0],
      [0, 0, 2, 4, 4, 0],
      [0, 0, 0, 2, 0, 0],
      [0, 0, 1, 2, 4, 0]
    ]

    hourglass = HourglassSum.new
    expected = 19
    actual = hourglass.hourglass_sum(arr)

    assert_equal expected, actual
  end
end
