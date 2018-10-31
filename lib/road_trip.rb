class RoadTrip
  def choose_best_sum(t, k, ls)
    possible_routes = ls.combination(k).to_a
    distances = possible_routes.map(&:sum)
    doable_distances = distances.reject do |distance|
      distance > t
    end
    doable_distances.empty? ? nil : doable_distances.max
  end
end
