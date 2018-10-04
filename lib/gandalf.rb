class Gandalf
  def minPower(path)
    start = path[0]
    strength_timeline = [0]
    path.each_with_index do |step, index|
      value = step + strength_timeline[index]
      strength_timeline << value
    end
    lowest_value = strength_timeline.min
    if lowest_value < 1
      difference = 1 - lowest_value
      difference
    elsif lowest_value == 1
      start
    elsif lowest_value > 1
      difference = lowest_value - 1
      start - difference
    end
  end
end
