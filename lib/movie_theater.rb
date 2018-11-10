class MovieTheater
  def seats_in_theater(tot_cols, tot_rows, col, row)
    width = tot_cols - col + 1
    height = tot_rows - row
    width * height
  end
end
