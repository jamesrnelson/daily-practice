require_relative 'test_helper'
require './lib/primes'

class PrimesTest < Minitest::Test
  def test_it_works_once
    primes = Primes.new
    expected = [101, 103]
    actual = primes.gap(2, 100, 110)
    assert_equal expected, actual
  end

  def test_it_works_twice
    primes = Primes.new
    expected = [103, 107]
    actual = primes.gap(4, 100, 110)
    assert_equal expected, actual
  end

  def test_it_works_three_times
    primes = Primes.new
    actual = primes.gap(6, 100, 110)
    assert_nil actual
  end

  def test_it_works_four_times
    primes = Primes.new
    expected = [359, 367]
    actual = primes.gap(8, 300, 400)
    assert_equal expected, actual
  end

  def test_it_works_five_times
    primes = Primes.new
    expected = [337, 347]
    actual = primes.gap(10, 300, 400)
    assert_equal expected, actual
  end
end
