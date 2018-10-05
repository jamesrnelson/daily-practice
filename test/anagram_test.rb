require_relative 'test_helper'
require './lib/anagram'

class AnagramTest < Minitest::Test
  def test_makes_anagram_counts_deletions
    anagram = Anagram.new
    expected = 4
    actual = anagram.makeAnagram('abcc', 'ccde')

    assert_equal expected, actual
  end
  def test_counts_deletions_same_letter_different_amounts_a
    anagram = Anagram.new
    expected = 5
    actual = anagram.makeAnagram('abccc', 'ccde')

    assert_equal expected, actual
  end

  def test_counts_deletions_same_letter_different_amounts_b
    anagram = Anagram.new
    expected = 5
    actual = anagram.makeAnagram('abcc', 'cccde')

    assert_equal expected, actual
  end

  def test_deletes_all_letters
    anagram = Anagram.new
    expected = 6
    actual = anagram.makeAnagram('abc', 'def')

    assert_equal expected, actual
  end

end
