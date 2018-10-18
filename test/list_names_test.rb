require_relative 'test_helper'
require './lib/list_names'

class ListNamesTest < Minitest::Test
  def test_it_makes_a_list_of_3_names
    list = ListNames.new
    names = [ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ]

    expected = 'Bart, Lisa & Maggie'
    actual = list.list(names)

    assert_equal expected, actual
  end

  def test_it_makes_a_list_of_2_names
    list = ListNames.new
    names = [ {name: 'Bart'}, {name: 'Lisa'} ]

    expected = 'Bart & Lisa'
    actual = list.list(names)

    assert_equal expected, actual
  end

  def test_it_makes_a_list_of_1_name
    list = ListNames.new
    names = [ {name: 'Bart'} ]

    expected = 'Bart'
    actual = list.list(names)

    assert_equal expected, actual
  end
end
