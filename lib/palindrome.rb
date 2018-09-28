class Palindrome
  def longest_palindrome(string)
    all_palindromes = []

    letters = string.chars
    letters.each_with_index do |letter, index|
      repetitions = letters.length - index
      comparison = letters.length - 1
      repetitions.times do
        forwards = letters[index..comparison]
        backwards = forwards.reverse
        if forwards == backwards
          all_palindromes << forwards
        end
        comparison -= 1
      end
    end
    longest = all_palindromes.max_by { |palindrome| palindrome.length }
    longest.join
  end

end
