class String
  def camelCase
    self.split(' ').map(&:capitalize).join
  end
end
