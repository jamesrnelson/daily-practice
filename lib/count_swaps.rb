class CountSwaps
  def count_swaps(a)
    array = a
    i = 0
    swaps = 0
    while i < a.length
      j = 0
      while j < (array.length - 1)
        if array[j] > array[j + 1]
          intermediary = array[j + 1]
          array[j + 1] = array[j]
          array[j] = intermediary
          swaps += 1
        end
        j += 1
      end
      i += 1
    end
    puts "Array is sorted in #{swaps} swaps."
    puts "First Element: #{array[0]}"
    puts "Last Element: #{array[-1]}"
    "Array is sorted in #{swaps} swaps.\nFirst Element: #{array[0]}\nLast Element: #{array[-1]}"
  end
end
