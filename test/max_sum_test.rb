require_relative 'test_helper'
require './lib/max_sum'

class MaxSumTest < Minitest::Test
  def test_it_works_with_empty_array
    max = MaxSum.new

    expected = 0
    actual = max.max_sequence([])

    assert_equal expected, actual
  end

  def test_it_works_with_real_data
    max = MaxSum.new

    expected = 6
    actual = max.max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4])

    assert_equal expected, actual
  end

  def test_it_works_with_one_positive_num
    max = MaxSum.new

    expected = 11
    actual = max.max_sequence([11])

    assert_equal expected, actual
  end

  def test_it_works_with_one_positive_num
    max = MaxSum.new

    expected = 11
    actual = max.max_sequence([11])

    assert_equal expected, actual
  end

  def test_it_works_with_one_negative_num
    max = MaxSum.new

    expected = 0
    actual = max.max_sequence([-32])

    assert_equal expected, actual
  end

  def test_it_works_again_with_real_data
    max = MaxSum.new

    expected = 12
    actual = max.max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4])

    assert_equal expected, actual
  end
end
