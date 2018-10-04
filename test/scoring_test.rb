require_relative 'test_helper'
require './lib/scoring'

class ScoringTest < Minitest::Test
  def test_it_works
    scoring = Scoring.new

    expected = 6
    actual = scoring.maxPoints([3, 4, 2])
    assert_equal expected, actual
  end
end
