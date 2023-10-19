class Citizen
  # Une méthode d'instance full_name => "Yanis Dahmane"
  # Une méthode d'instance can_vote? => true
  # attr_accessor :first_name
  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  def full_name
    "#{serialize(@first_name)} #{serialize(@last_name)}"
  end

  def can_vote?
    @age >= 18
  end

  private

  def serialize(word)
    #=> "   yaniS"
    #=> "Yanis"
    word.strip.capitalize
  end
end
