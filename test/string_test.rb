require_relative 'test_helper'
require './lib/string'

class SringTest < Minitest::Test
  def test_it_works
    expected = 'TestCase'
    actual = 'test case'.camelCase
    assert_equal expected, actual
  end

  def test_it_works_again
    expected = 'CamelCaseMethod'
    actual = 'camel case method'.camelCase
    assert_equal expected, actual
  end

  def test_it_works_three_times
    expected = 'CamelCaseWord'
    actual = ' camel case word'.camelCase
    assert_equal expected, actual
  end
end
