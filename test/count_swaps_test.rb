require_relative 'test_helper'
require './lib/count_swaps'

class CountSwapsTest < Minitest::Test
  def test_it_counts_swaps_and_orders_array
    bubble = CountSwaps.new
    expected = "Array is sorted in 3 swaps.\nFirst Element: 1\nLast Element: 6"
    actual = bubble.count_swaps([6, 4, 1])
    assert_equal expected, actual
  end
end
