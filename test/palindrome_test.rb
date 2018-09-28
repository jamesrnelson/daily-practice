require_relative 'test_helper'
require './lib/palindrome.rb'

class PalindromeTest < Minitest::Test
  def test_it_finds_a_palindrome
    palindrome = Palindrome.new
    expected = "bab"
    actual = palindrome.longest_palindrome("babad")
    assert_equal expected, actual
  end

  def test_it_finds_another
    palindrome = Palindrome.new
    expected1 = 'bb'
    actual1 = palindrome.longest_palindrome('bb')
    expected2 = 'racecar'
    actual2 = palindrome.longest_palindrome('smtpracecartqur')
    assert_equal expected1, actual1
    assert_equal expected2, actual2
  end
end
