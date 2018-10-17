class LongestString
  def longest(a1, a2)
    a_array = a1.chars
    b_array = a2.chars
    combined_array = [a_array, b_array]
    flattened = combined_array.flatten
    flattened.uniq.sort.join
  end
end
