class Player

  attr_reader(:name)

  def initialize(name)
    @name = name
    @lives = 6
  end

end
