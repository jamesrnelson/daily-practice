require_relative 'test_helper'
require './lib/movie_theater'

class MovieTheaterTest < Minitest::Test
  def test_it_works
    theater = MovieTheater.new
    actual = theater.seats_in_theater(16, 11, 5, 3)
    expected = 96
    assert_equal actual, expected
  end
end
