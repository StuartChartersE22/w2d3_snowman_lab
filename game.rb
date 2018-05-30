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

  def is_player_playing?(questioned_player)
    for player in @players
      return true if player == questioned_player
    end
    return false
  end

  def add_guessed_letter(player, letter, word)
    return if @guessed_letters.include?(letter) || !player.is_player_playing?
    @guessed_letters.push(letter)
    is_letter_in_word = word.add_letter?(letter)
    player.lose_life() if !is_letter_in_word
  end

  def remove_dead_players()
    alive_players = []
    for player in @players
      alive_players.push(player) if !player.is_dead?()
    end
    @players = alive_players
  end

  def is_game_over?(word)
    return true if @players.length() == 0 || word.has_player_won?
    return false
  end

  def type_of_end(word)
    return if !is_game_over?(word)
    return "lose" if @players.length() == 0
    return "win" if word.has_player_won?
  end

end
