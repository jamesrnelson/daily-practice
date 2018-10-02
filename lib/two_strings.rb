class TwoStrings
  def two_strings(s1, s2)
    dictionary = {}
    first_word = s1.chars
    first_word.each do |letter|
      dictionary[letter] = 'first'
    end
    second_word = s2.chars
    second_word.each do |letter|
      if dictionary[letter] == 'first'
        return 'YES'
      end
    end
    return 'NO'
  end
end
