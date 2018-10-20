class PersistentBugger
  def how_persistent(num, repetitions = 0)
    string_letters = num.to_s.chars
    digits = string_letters.map { |string| string.to_i }
    product = digits.reduce(:*)
    if repetitions == 0 && digits.length == 1
      return 0
    elsif product > 9
      repetitions += 1
      how_persistent(product, repetitions)
    elsif product <= 9
      repetitions += 1
      return repetitions
    end
  end
end
