require 'pry'

class HourglassSum
  def hourglass_sum(arr)
    hourglasses = create_hourglass_arrays(arr)
    sums = hourglasses.map { |hourglass| hourglass.sum }
    sums.max
  end

  def create_hourglass_arrays(arr)
    height = arr.length
    width = arr[0].length
    hourglass_arrays = []

    if height >= 3 && width >= 3
      width_reps = width - 2
      height_reps = height - 2
      height_index = 0
      height_reps.times do
        width_index = 0
        width_reps.times do
          new_hourglass = []
          new_hourglass.push(arr[height_index][width_index..(width_index + 2)])
          new_hourglass.push(arr[height_index + 1][width_index + 1])
          new_hourglass.push(arr[height_index + 2][width_index..(width_index + 2)])
          hourglass_arrays.push(new_hourglass.flatten)
          width_index += 1
        end
        height_index += 1
      end
      hourglass_arrays
    else
      false
    end
  end
end
