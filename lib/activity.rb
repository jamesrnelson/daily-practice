class Activity
  def activityNotifications(expenditure, d)
    notifications = 0
    days_to_check = expenditure[d..-1]

    days_to_check.each_with_index do |daily_spending, index|
      median = find_median(expenditure[index..(index + d - 1)])
      daily_spending >= (median * 2) ? notifications += 1 : notifications += 0
    end
    notifications
  end

  def find_median(array)
    sorted = merge_sort(array)
    if sorted.length % 2 == 0
      value1 = (sorted.length / 2) - 1
      value2 = sorted.length / 2
      (sorted[value1].to_f + sorted[value2]) / 2
    else
      value = sorted.length / 2
      sorted[value]
    end
  end

  def merge_sort(array)
    if array.length <= 1
      array
    else
      mid = (array.length / 2).floor
      left = merge_sort(array[0..mid-1])
      right = merge_sort(array[mid..array.length])
      merge(left, right)
    end
  end

  def merge(left, right)
    if left.empty?
      right
    elsif right.empty?
      left
    elsif left[0] < right[0]
      [left[0]] + merge(left[1..left.length], right)
    else
      [right[0]] + merge(left, right[1..right.length])
    end
  end
end
