require_relative 'test_helper'
require './lib/road_trip'

class RoadTripTest < Minitest::Test
  def test_it_works_once
    trip = RoadTrip.new
    ts = [50, 55, 56, 57, 58]
    expected = 163
    actual = trip.choose_best_sum(163, 3, ts)
    assert_equal expected, actual
  end

  def test_it_works_twice
    trip = RoadTrip.new
    ts = [50]
    actual = trip.choose_best_sum(163, 3, ts)
    assert_nil actual
  end

  def test_it_works_three_times
    trip = RoadTrip.new
    ts = [91, 74, 73, 85, 73, 81, 87]
    expected = 228
    actual = trip.choose_best_sum(230, 3, ts)
    assert_equal expected, actual
  end
end
