class Building
  def initialize(width, length, height, name)
    @width = width
    @length = length
    @height = height
    @name = name
  end

  def floor_area
    return @length * @width
  end


  def capitalized_name
    @name.capitalize
  end
end
