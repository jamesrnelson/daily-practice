class Bribe
  def minimumBribes(q)
    bribes = 0
    q.each_with_index do |value, index|
      offset_index = index + 1
      difference = value - offset_index
      if difference > 0 && value < (offset_index + 3)
        bribes += difference
      elsif difference > 0 && value > (offset_index + 2)
        puts "Too chaotic"
        return "Too chaotic"
      elsif difference < -3
        extra = -3 - difference
        bribes += extra
      else
        bribes += 0
      end
    end
    puts bribes
    bribes
  end
end
