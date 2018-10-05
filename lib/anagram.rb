class Anagram
  def makeAnagram(a, b)
    deletions = 0
    a_array = a.chars
    b_array = b.chars
    a_dictionary = {}
    b_dictionary = {}
    a_array.each do |char|
      a_dictionary[char].nil? ? a_dictionary[char] = 1 : a_dictionary[char] += 1
    end
    b_array.each do |char|
      b_dictionary[char].nil? ? b_dictionary[char] = 1 : b_dictionary[char] += 1
    end
    a_array.uniq.each do |char|
      if b_dictionary[char].nil?
        deletions += a_dictionary[char]
      else
        value = (a_dictionary[char] - b_dictionary[char]).abs
        deletions += value
        b_dictionary[char] = 0
      end
    end
    b_array.uniq.each do |char|
      if b_dictionary[char] == 0
        deletions += 0
      elsif a_dictionary[char].nil?
        deletions += b_dictionary[char]
      end
    end
    deletions
  end
end
