class Palindrome
  def longest_palindrome(string)
    palindrome = []
    letters = string.chars
    first = letters.first
    last = letters.last
    if check_first_and_last(first, last)

  end

  def check_first_and_last(first, last)
    if first == last
      true
    else
      false
    end
  end

end
