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
    expected = 3
    actual = bounces.bouncingBall(3, 0.66, 1.5)
    assert_equal expected, actual
  end

  def test_it_works_three_times
    bounces = BouncingBall.new
    expected = 3
    actual = bounces.bouncingBall(3, 0.66, 1.5)
    assert_equal expected, actual
  end
end
