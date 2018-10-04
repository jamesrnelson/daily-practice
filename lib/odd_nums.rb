class OddNums
  def oddNumbers(l, r)
    i = 0
    reps = r - l + 1
    arr = []
    reps.times do
      arr[i] = l + i
      i += 1
    end
    odds = []
    arr.each do |num|
      if num % 2 == 1
        odds << num
      end
    end
    odds
  end
end
