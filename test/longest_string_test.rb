require_relative 'test_helper'
require './lib/longest_string'

class LongestStringTest < Minitest::Test
  def test_it_works
    string = LongestString.new

    a = 'xyaabbbccccdefww'
    b = 'xxxxyyyyabklmopq'

    expected = 'abcdefklmopqwxy'
    actual = string.longest(a, b)

    assert_equal expected, actual
  end

  def test_it_works_again
    string = LongestString.new

    a = 'loopingisfunbutdangerous'
    b = 'lessdangerousthancoding'

    expected = 'abcdefghilnoprstu'
    actual = string.longest(a, b)

    assert_equal expected, actual
  end

  def test_it_works_a_third_time
    string = LongestString.new

    a = 'inmanylanguages'
    b = 'theresapairoffunctions'

    expected = 'acefghilmnoprstuy'
    actual = string.longest(a, b)

    assert_equal expected, actual
  end
end
