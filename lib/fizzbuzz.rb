class Fizzbuzz
  def fizzBuzz(n)
    numbers = (1..n).sort
    fizzes = []
    numbers.each do |num|
      if num % 3 == 0 && num % 5 == 0
        value = 'FizzBuzz'
      elsif num % 3 == 0
        value = 'Fizz'
      elsif num % 5 == 0
        value = 'Buzz'
      else
        value = num
      end
      fizzes << value
    end
    fizzes.each do |fizz|
      puts fizz
    end
  end
end
