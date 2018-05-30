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

  def add_guessed_letter(player, letter, word)
    return if @guessed_letters.include?(letter)
    @guessed_letters.push(letter)
    is_letter_in_word = word.add_letter?(letter)
    player.lose_life() if !is_letter_in_word
  end



end
