require_relative "building"
require_relative "butler"
class Castle < Building
  attr_accessor :moat
  attr_reader :butler, :ruler_name

  def initialize(name, width, length, height, ruler_name)
    super(width, length, height, name)
    @ruler_name = ruler_name
    #self => #<Castle:0x0000000104ac1610 @width=17, @length=30, @height=90, @name="Ma super tour">
    @butler = Butler.new(self) # We need to pass the current instance of Castle
  end

  def ownership_details
    "#{@name} is ruled by #{@ruler_name}"
  end

  def ruler_name
    @ruler_name.capitalize
  end

  def has_a_moat?
    @moat == true
  end

  def floor_area
    super + 300
  end

  def self.categories
    return ["Medieval", "Norman", "Ancient"]
  end

end
