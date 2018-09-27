require 'pry'

def returns_to_origin(input)
  north_south_offset = 0
  east_west_offset = 0
  bearing = 0
  directions = input.split('')
  directions.each do |direction|
    if direction == 'G' && bearing == 0
      north_south_offset += 1
    elsif direction == 'G' && bearing == 1
      east_west_offset += 1
    elsif direction == 'G' && bearing == 2
      north_south_offset -= 1
    elsif direction == 'G' && bearing == 3
      east_west_offset -= 1
    elsif direction == 'R' && bearing < 3
      bearing += 1
    elsif direction == 'R' && bearing == 3
      bearing = 0
    elsif direction == 'L' && bearing > 0
      bearing -= 1
    elsif direction == 'L' && bearing == 0
      bearing = 3
    end
  end
  if north_south_offset == 0 && east_west_offset == 0
    return true
  else
    return false
  end
end

p(returns_to_origin('LLLLL'))

p('Check: The previous line should be True')

p(returns_to_origin('GRGRGRG'))

p('Check: The previous line should be True')

p(returns_to_origin('GRGRLL'))

p('Check: The previous line should be False')

p(returns_to_origin(''))

p('Check: The previous line should be True')

p(returns_to_origin('GRGGRGGRGRGLG'))

p('Check: The previous line should be True')

p(returns_to_origin('GRGRGGLGRGRGRG'))

p('Check: The previous line should be False')
