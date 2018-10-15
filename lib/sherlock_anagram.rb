class SherlockAnagram
  def sherlockAndAnagrams(s)
    letters = s.chars
    dictionary = {}
    anagrams = 0
    letters.each_with_index do |letter, index|
      repetitions = letters.length - index
      increment = 0
      repetitions.times do
        sub_string = letters[index..(index + increment)].join
        if dictionary[sub_string]
          anagrams += 1
        else
          possibilities = sub_string.chars.permutation(sub_string.length).to_a
          possibilities.each do |possibility|
            word = possibility.join
            dictionary[word] = index
          end
        end
        increment += 1
      end
    end
    anagrams
  end
end
