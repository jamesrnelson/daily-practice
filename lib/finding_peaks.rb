class FindingPeaks
  def pick_peaks(arr)
    peak_guide = { 'pos' => [], 'peaks' => [] }
    increment = 2
    arr.each_with_index do |elevation, index|
      if index == 0 || index == arr.length - 1
        nil
      elsif elevation > arr[index - 1] && elevation > arr[index + 1]
        peak_guide['pos'] << index
        peak_guide['peaks'] << elevation
      elsif elevation > arr[index - 1] && elevation == arr[index + 1]
        until index + increment == arr.length - 1 || arr[index + increment] != elevation
          increment += 1
        end
        if arr[index + increment] < elevation
          peak_guide['pos'] << index
          peak_guide['peaks'] << elevation
        end
      end
    end
    peak_guide
  end
end
