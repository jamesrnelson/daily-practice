class SumPowers
  def sum_dig_pow(a, b)
    sample = (a..b).to_a
    collection = []
    sample.each do |num|
      if num.to_s.length == 1
        collection << num
      else
        stringified_array = num.to_s.chars
        sum = 0
        stringified_array.each_with_index do |digit, index|
          power = index + 1
          sum += (digit.to_i ** power)
        end
        collection << num if num == sum
      end
    end
    collection
  end
end
