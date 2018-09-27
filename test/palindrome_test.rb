require_relative 'test_helper'
require './lib/palindrome.rb'

class PalindromeTest < Minitest::Test
  def test_it_finds_a_palindrome
    palindrome = Palindrome.new
    expected = "bab"
    actual = palindrome.longest_palindrome("babad")
    assert_equal expected, actual
  end
end
