class Player

  attr_reader(:name, :lives)

  def initialize(name)
    @name = name
    @lives = 6
  end

  def lose_life()
    @lives -= 1
  end

  def is_dead?()
    return @lives == 0
  end

end
