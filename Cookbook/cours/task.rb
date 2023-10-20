class Task
  attr_reader :name, :description

  def initialize(name , description)
    @name = name
    @description = description
    @done = false
  end

  def done?
    return @done
  end

  def mark_as_done!
    @done = true
  end
end
