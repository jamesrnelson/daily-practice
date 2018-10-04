class Find
  def findNumber(arr, num)
    search = arr.find { |i| i == num }
    search.nil? ? 'NO' : 'YES'
  end
end
