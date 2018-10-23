class FirstNonrepeatingLetter
  def first_non_repeating_letter(s)
    letter_array = s.chars
    dictionary = {}
    if s.empty?
      return ''
    else
      letter_array.each do |letter|
        add_letter = letter.downcase
        if dictionary[add_letter]
          dictionary[add_letter] += 1
        else
          dictionary[add_letter] = 1
        end
      end

      letter_array.each do |letter|
        add_letter = letter.downcase
        if dictionary[add_letter] == 1
          return letter
        end
      end
    end
  end
end
