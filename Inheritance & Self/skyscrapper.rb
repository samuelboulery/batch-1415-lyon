require_relative "building"
class Skyscrapper < Building

  def type_of_owner
    if @height > 50
      "this #{self.capitalized_name} is a skyscraper for Spider-Man."
      self
    else
      "this #{self.capitalized_name} is a skyscraper for beginners"
    end
  end
end
