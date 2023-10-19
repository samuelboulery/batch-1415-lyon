# On créé une classe Car
class Car
  # On utilise attr_writer pour permettre de lire et écrire la variable color, wheel et started
  attr_accessor :color, :wheel
  # On utilise attr_reader pour permettre de lire la variable serial_number
  attr_reader :plate

  # On défini la méthode initialize qui prend un paramètre hash
  def initialize(hash = {})
    # On défini les variables d'instance
    # On utilise ||= pour définir une valeur par défaut
    # Si la valeur existe, on ne la change pas
    @color = hash[:color] ||= "white"
    @wheel = hash[:wheel] ||= 4
    @started = hash[:started] ||= false
    @plate = hash[:plate]

    # On défini la variable d'instance serial_number grâce à la méthode set_serial_number
    @serial_number = set_serial_number
  end

  # Grâce à attr_reader et attr_accessor nous n'avons plus besoin de définir les méthodes suivantes:

  # def get_color
  #   return @color
  # end

  # def get_wheel
  #   return @wheel
  # end

  # Grâce à attr_writer et attr_accessor nous n'avons plus besoin de définir les méthodes suivantes:

  # def set_color(color)
  #   @color = color
  # end

  # def set_wheel(number)
  #   @wheel = number
  # end


  # On défini la méthode start
  def start
    # On change la valeur de la variable d'instance started
    @started = true
  end

  # On défini la méthode is_started?
  def is_started?
    # On retourne la valeur de la variable d'instance started
    return @started
  end

  def set_seat(seat)
    @seat = seat
  end

  # Private => permet de définir les méthodes privées
  private

  # On défini la méthode set_serial_number (methode privée)
  def set_serial_number
    return rand(99_999_999)
  end
end
