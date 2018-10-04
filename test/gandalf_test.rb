require_relative 'test_helper'
require './lib/gandalf'

class GandalfTest < Minitest::Test
  def test_it_works
    wiz = Gandalf.new

    expected = 6
    actual = wiz.minPower([-5, 4, -2, 3, 1])
    assert_equal expected, actual
  end
end
