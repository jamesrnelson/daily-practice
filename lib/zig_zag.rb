class ZigZag
  def convert(string, num_rows)
    if num_rows == 1 || string.empty?
      string
    else
      last_index = num_rows - 1
      letters = string.chars
      order = []
      i = 0
      num_rows.times do
        addition = [letters.shift]
        order[i] = addition
        i += 1
      end
      index = last_index - 1
      direction = 'left'
      letters.each do |letter|
        if direction == 'left' && index > 0
          order[index].push(letter)
          index -= 1
        elsif direction == 'left' && index == 0
          order[index].push(letter)
          direction = 'right'
          index += 1
        elsif direction == 'right' && index < last_index
          order[index].push(letter)
          index += 1
        elsif direction == 'right' && index == last_index
          order[index].push(letter)
          direction = 'left'
          index -= 1
        end
      end
      order.flatten.join
    end
  end
end
