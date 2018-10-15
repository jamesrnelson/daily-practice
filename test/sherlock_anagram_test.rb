require_relative 'test_helper'
require './lib/sherlock_anagram'

class SherlockAnagramTest < Minitest::Test
  def test_it_works
    anagram = SherlockAnagram.new
    string = 'ifailuhkqq'
    
    expected = 3
    actual = anagram.sherlockAndAnagrams(string)

    assert_equal expected, actual
  end
end
