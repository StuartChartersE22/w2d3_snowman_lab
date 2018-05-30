class Game

  attr_reader(:name, :guessed_letters)

  def initialize(name)
    @name = name
    @players = []
    @guessed_letters = []
  end

  def number_of_players()
    @players.length()
  end

  def add_player(player)
    @players.push(player)
  end

  def add_guessed_letter(letter)
    return if @guessed_letters.include?(letter)
    @guessed_letters.push(letter)
  end



end
