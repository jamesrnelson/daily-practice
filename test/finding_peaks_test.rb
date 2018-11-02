require_relative 'test_helper'
require './lib/finding_peaks'

class FindingPeaksTest < Minitest::Test
  def test_it_works_once
    peaks = FindingPeaks.new
    mountains = [1, 2, 3, 6, 4, 1, 2, 3, 2, 1]
    expected = { 'pos' => [3, 7], 'peaks' => [6, 3] }
    actual = peaks.pick_peaks(mountains)
    assert_equal expected, actual
  end

  def test_it_works_twice
    peaks = FindingPeaks.new
    mountains = [3, 2, 3, 6, 4, 1, 2, 3, 2, 1, 2, 3]
    expected = { 'pos' => [3, 7], 'peaks' => [6, 3] }
    actual = peaks.pick_peaks(mountains)
    assert_equal expected, actual
  end

  def test_it_works_with_a_plateau
    peaks = FindingPeaks.new
    mountains = [3, 2, 3, 6, 4, 1, 2, 3, 2, 1, 2, 2, 2, 1]
    expected = { 'pos' => [3, 7, 10], 'peaks' => [6, 3, 2] }
    actual = peaks.pick_peaks(mountains)
    assert_equal expected, actual
  end

  def test_it_works_twice_with_a_plateau
    peaks = FindingPeaks.new
    mountains = [2, 1, 3, 1, 2, 2, 2, 2, 1]
    expected = { 'pos' => [2, 4], 'peaks' => [3, 2] }
    actual = peaks.pick_peaks(mountains)
    assert_equal expected, actual
  end

  def test_it_doesnt_count_edges
    peaks = FindingPeaks.new
    mountains = [2, 1, 3, 1, 2, 2, 2, 2]
    expected = { 'pos' => [2], 'peaks' => [3] }
    actual = peaks.pick_peaks(mountains)
    assert_equal expected, actual
  end
end
