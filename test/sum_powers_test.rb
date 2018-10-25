require_relative 'test_helper'
require './lib/sum_powers'

class SumPowersTest < Minitest::Test
  def test_it_works_with_one_digit
    powers = SumPowers.new

    expected = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    actual = powers.sum_dig_pow(1, 10)

    assert_equal expected, actual
  end

  def test_it_works_with_one_digit_and_two_digits
    powers = SumPowers.new

    expected = [1, 2, 3, 4, 5, 6, 7, 8, 9, 89]
    actual = powers.sum_dig_pow(1, 100)

    assert_equal expected, actual
  end

  def test_it_works_with_just_two_digits
    powers = SumPowers.new

    expected = [89]
    actual = powers.sum_dig_pow(80, 100)

    assert_equal expected, actual
  end

  def test_it_can_return_empty_array
    powers = SumPowers.new

    expected = []
    actual = powers.sum_dig_pow(90, 100)

    assert_equal expected, actual
  end
end
