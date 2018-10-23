require_relative 'test_helper'
require './lib/first_nonrepeating_letter'

class FirstNonrepeatingLetterTest < Minitest::Test
  def test_it_works_one_letter
    check = FirstNonrepeatingLetter.new
    expected = 'a'
    actual = check.first_non_repeating_letter('a')
    assert_equal expected, actual
  end

  def test_it_works_smaller_words
    check = FirstNonrepeatingLetter.new
    expected = 't'
    actual = check.first_non_repeating_letter('stress')
    assert_equal expected, actual
  end

  def test_it_works_many_repeating_letters
    check = FirstNonrepeatingLetter.new
    expected = 'e'
    actual = check.first_non_repeating_letter('moonmen')
    assert_equal expected, actual
  end
end
