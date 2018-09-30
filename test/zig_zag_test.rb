require_relative 'test_helper'
require './lib/zig_zag.rb'

class ZigZagTest < Minitest::Test
  def test_it_has_correct_output
    zig_zag = ZigZag.new
    string = 'PAYPALISHIRING'
    expected = 'PAHNAPLSIIGYIR'
    actual = zig_zag.convert(string, 3)
    assert_equal expected, actual
  end
end
