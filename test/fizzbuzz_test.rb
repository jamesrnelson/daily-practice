require_relative 'test_helper'
require './lib/fizzbuzz'

class FizzbuzzTest < Minitest::Test
  def test_it_prints_3
    fizz = Fizzbuzz.new

    expected = 'Fizz'
    actual = fizz.fizzBuzz(3)

    assert_equal expected, actual
  end

  def test_it_prints_5
    fizz = Fizzbuzz.new

    expected = 'Buzz'
    actual = fizz.fizzBuzz(5)

    assert_equal expected, actual
  end

  def test_it_prints_3_and_5
    fizz = Fizzbuzz.new

    expected = 'FizzBuzz'
    actual = fizz.fizzBuzz(15)

    assert_equal expected, actual
  end

  def test_it_prints_a_number
    fizz = Fizzbuzz.new

    expected = 17
    actual = fizz.fizzBuzz(17)

    assert_equal expected, actual
  end
end
