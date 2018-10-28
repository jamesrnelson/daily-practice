class Primes
  def gap(g, m, n)
    if m > n || m < 2 || g < 2
      nil
    else
      initial_set = (2..n).to_a
      primes = initial_set.each do |num|
        multiplier = 2
        while (num * multiplier) < n
          initial_set.delete(num * multiplier)
          multiplier += 1
        end
      end
      final_set = primes.reject { |prime| prime < m }
      if final_set.length < 2
        nil
      else
        index = 1
        while index < final_set.length
          return [final_set[index - 1], final_set[index]] if final_set[index] - final_set[index - 1] == g
          index += 1
        end
      end
    end
  end
end
