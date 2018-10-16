class Triangle
  def isTriangle(a, b, c)
    sides = [a, b, c]
    sorted_sides = sides.sort
    sorted_sides[0] + sorted_sides[1] > sorted_sides[2] ? true : false      
  end
end
