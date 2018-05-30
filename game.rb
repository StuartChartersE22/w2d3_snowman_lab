class Game

  attr_reader(:name)

  def initialize(name)
    @name = name
    @players = []
  end

  def number_of_players()
    @players.length()
  end

  def add_player(player)
    @players.push(player)
  end

end
