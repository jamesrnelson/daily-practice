class Bribe
  def minimumBribes(q)
    bribes = 0
    q.each_with_index do |value, index|
      offset_index = index + 1
      difference = value - offset_index
      if difference > 0 && value > offset_index + 2 
        puts "Too chaotic"
        return "Too chaotic"
      elsif difference > 0
        bribes += difference
      elsif difference == -4
        bribes += difference.abs
      elsif difference == -5
        bribes += (difference.abs + 2)
      else
        bribes += 0
      end
    end
    puts bribes
    bribes
  end
end
