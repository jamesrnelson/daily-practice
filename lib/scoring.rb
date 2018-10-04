class Scoring
  def maxPoints(elements)
    score = 0
    new_arrangement = elements.sort { |a, b| b <=> a }
    sorted = {}
    new_arrangement.each do |element|
      if sorted[element]
        sorted[element] += element
      else
        sorted[element] = element
      end
    end
    new_arrangement.each do |element|
      if sorted[element]
        score += sorted[element]
        sorted[element] = 0
      end
      if sorted[element + 1]
        sorted[element + 1] = 0
      end
      if sorted[element - 1]
        sorted[element - 1] = 0
      end
    end
    score
  end
end
