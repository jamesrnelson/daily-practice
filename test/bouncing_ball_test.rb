require_relative 'test_helper'
require './lib/bouncing_ball'

class BouncingBallTest < Minitest::Test
  def test_it_works_once
    bounces = BouncingBall.new
    expected = 3
    actual = bounces.bouncingBall(3, 0.66, 1.5)
    assert_equal expected, actual
  end

  def test_it_works_twice
    bounces = BouncingBall.new
    expected = 15
    actual = bounces.bouncingBall(30, 0.66, 1.5)
    assert_equal expected, actual
  end

  def test_it_works_three_times
    bounces = BouncingBall.new
    expected = 21
    actual = bounces.bouncingBall(30, 0.75, 1.5)
    assert_equal expected, actual
  end

  def test_it_works_four_times
    bounces = BouncingBall.new
    expected = 3
    actual = bounces.bouncingBall(30, 0.4, 10)
    assert_equal expected, actual
  end

  def test_it_gives_negative_one_once
    bounces = BouncingBall.new
    expected = -1
    actual = bounces.bouncingBall(40, 1, 10)
    assert_equal expected, actual
  end

  def test_it_gives_negative_one_twice
    bounces = BouncingBall.new
    expected = -1
    actual = bounces.bouncingBall(-5, 0.66, 1.5)
    assert_equal expected, actual
  end
end
