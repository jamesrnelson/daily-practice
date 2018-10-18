class ListNames
  def list(names)
    just_names = names.map { |name| name[:name] }
    name_string = ''
    just_names.each_with_index do |name, index|
      if index == 0
        name_string << "#{name}"
      elsif (index == just_names.length - 1)
        name_string << " & #{name}"
      else
        name_string << ", #{name}"
      end
    end
    name_string
  end
end
