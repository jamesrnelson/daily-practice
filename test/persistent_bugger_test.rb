require_relative 'test_helper'
require './lib/persistent_bugger'

class PersistentBuggerTest < Minitest::Test
  def test_it_checks_how_persistent
    bugger = PersistentBugger.new

    num = 39
    expected = 3
    actual = bugger.how_persistent(num)

    assert_equal expected, actual
  end

  def test_it_checks_how_persistent_again
    bugger = PersistentBugger.new

    num = 999
    expected = 4
    actual = bugger.how_persistent(num)

    assert_equal expected, actual
  end

  def test_it_checks_how_persistent_a_third_time
    bugger = PersistentBugger.new

    num = 4
    expected = 0
    actual = bugger.how_persistent(num)

    assert_equal expected, actual
  end
end
