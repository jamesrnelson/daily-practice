class MaxSum
  # only start adding sequential values if the first element is greater than zero
  # Keep adding sequential elements as long as the sum is greater than zero
  # But keep track of the positions of the sum as value is deducted from it
  # Whenever sum is decremented, but remains positive, shovel that max value into array
  # after iterating through whole collection, find max value of the array
  # break when sum becomes less than or equal to zero and record the previous max.
  def max_sequence(arr)
    possible_max = []
    if arr.empty?
      0
    else
      arr.each_with_index do |num, index|
        sum = 0
        increment = 1
        if num > 0
          sum += num
          until sum <= 0 || index + increment == arr.length do
            new_sum = sum + arr[index + increment]
            increment += 1
            possible_max << sum if new_sum < sum
            sum = new_sum
          end
          possible_max << sum
        else
          possible_max << 0
        end
      end
      possible_max.max
    end
  end
end
