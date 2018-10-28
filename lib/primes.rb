class Primes
  def gap(g, m, n)
    if m > n || m < 2 || g < 2
      nil
    else
      crunch_the_numbers(g, m, n)
    end
  end

  def crunch_the_numbers(gap, start, last)
    initial_set = (2..last).to_a
    primes = find_primes(initial_set, last)
    final = primes.reject { |prime| prime < start }
    matching_values(final, gap)
  end

  def find_primes(initial_set, last)
    initial_set.each do |num|
      multiplier = 2
      while (num * multiplier) < last
        initial_set.delete(num * multiplier)
        multiplier += 1
      end
    end
  end

  def matching_values(final, gap)
    final.length < 2 ? nil : compare_differences(final, gap)
  end

  def compare_differences(final, gap)
    i = 1
    while i < final.length
      return [final[i - 1], final[i]] if final[i] - final[i - 1] == gap
      i += 1
    end
  end
end
