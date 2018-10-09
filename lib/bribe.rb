class Bribe
  def minimumBribes(q)
    bribes = 0
    bribes_obverse = 0
    q.each_with_index do |value, index|
      offset_index = index + 1
      difference = value - offset_index
      if difference > 0 && value < (offset_index + 5)
        bribes += difference
      elsif value > (offset_index + 5) || value < (offset_index - 5)
        binding.pry
        # puts "Too chaotic"
        return "Too chaotic"
      elsif difference < -3
        extra = -3 - difference
        bribes += extra
      elsif difference < 0
        bribes_obverse += difference
      else
        puts value
      end
    end
    # puts bribes
    puts "It took #{bribes} bribes"
    puts "The bribes obverse is #{bribes_obverse}"
  end
end
