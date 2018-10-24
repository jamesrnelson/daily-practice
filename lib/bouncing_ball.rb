class BouncingBall
  def bouncingBall(h, bounce, window)
    check_params(h, bounce, window) ? calculate(h, bounce, window) : -1
  end

  def check_params(h, bounce, window)
    (h > 0 && bounce > 0 && bounce < 1 && window < h) ? true : false
  end

  def calculate(h, bounce, window, times_past = 1)
    new_height = h * bounce
    if new_height > window
      times_past += 2
      calculate(new_height, bounce, window, times_past)
    else
      times_past
    end
  end
end
