class ConsecutiveIntegers
  def consecutive(num)
    counter = 0
    integers = (1..(num / 2 + 1)).sort
    last = integers.last
    integers.each do |integer|
      sum = 0
      for i in integer..last
        sum += i
        if sum == num
          counter += 1
          break
        end
      end
    end
    counter
  end
end
