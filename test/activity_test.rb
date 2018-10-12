require_relative 'test_helper'
require './lib/activity'

class ActivityTest < Minitest::Test
  def test_it_counts_notifications
    activity = Activity.new

    expected = 2
    actual = activity.activityNotifications([2, 3, 4, 2, 3, 6, 8, 4, 5], 5)

    assert_equal expected, actual
  end

  def test_it_counts_notifications_another_time
    activity = Activity.new

    expected = 1
    actual = activity.activityNotifications([10, 20, 30, 40, 50], 3)

    assert_equal expected, actual
  end
end
