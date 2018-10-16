require_relative 'test_helper'
require './lib/triangle'

class TriangleTest < Minitest::Test
  def test_it_can_determine_if_its_a_triangle
    tri = Triangle.new

    expected = true
    actual = tri.isTriangle(1, 2, 2)

    assert_equal expected, actual
  end

  def test_it_can_determine_if_its_NOT_a_triangle
    tri = Triangle.new

    expected = false
    actual = tri.isTriangle(7, 2, 2)

    assert_equal expected, actual
  end
end
