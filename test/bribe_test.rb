require_relative 'test_helper'
require './lib/bribe'

class BribeTest < Minitest::Test
  def test_it_counts_number_of_bribes
    bribe = Bribe.new
    array = [2, 1, 5, 3, 4]
    expected = 3
    actual = bribe.minimumBribes(array)

    assert_equal expected, actual
  end

  def test_it_prints_too_chaotic
    bribe = Bribe.new
    array = [2, 5, 1, 3, 4]
    expected = 'Too chaotic'
    actual = bribe.minimumBribes(array)

    assert_equal expected, actual
  end

end
