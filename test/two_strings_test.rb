require_relative 'test_helper'
require './lib/two_strings'

class TwoStringsTest < Minitest::Test
  def test_it_can_find_substrings
    two_strings = TwoStrings.new
    expected = 'YES'
    actual = two_strings.two_strings('hello', 'world')
    assert_equal expected, actual
  end

  def test_it_can_find_more_substrings
    two_strings = TwoStrings.new
    expected = 'NO'
    actual = two_strings.two_strings('hi', 'world')
    assert_equal expected, actual
  end
end
