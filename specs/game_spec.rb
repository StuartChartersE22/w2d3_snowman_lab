require("minitest/autorun")
require_relative("../game.rb")
require_relative("../hiddenword.rb")
require_relative("../player.rb")

class GameTest < MiniTest::Test

  def setup
    @game1 = Game.new("test1")
    @word1 = HiddenWord.new("hello")
    @player1 = Player.new("Stuart")
    @player2 = Player.new("Joe")
  end

  def test_game_has_name
    assert_equal("test1", @game1.name())
  end

  def test_add_a_player
    @game1.add_player(@player1)
    assert_equal(1,@game1.number_of_players())
  end

  def test_is_player_playing
    assert_equal(false, @game1.is_player_playing?(@player1))
  end

  def test_add_guessed_letter__letter_not_already_guessed
    @game1.add_player(@player1)
    @game1.add_guessed_letter(@player1,"h", @word1)
    assert_equal(["h"], @game1.guessed_letters())
  end

  def test_add_guessed_letter__letter_already_guessed
    @game1.add_player(@player1)
    @game1.add_guessed_letter(@player1,"h", @word1)
    @game1.add_guessed_letter(@player1,"h", @word1)
    assert_equal(1, @game1.guessed_letters().length())
  end

  def test_add_guessed_letter__letter_not_in_word
    @game1.add_player(@player1)
    @game1.add_guessed_letter(@player1,"j", @word1)
    assert_equal(1, @game1.guessed_letters().length())
    assert_equal(5, @player1.lives())
  end

  def test_removing_dead_players
    @game1.add_player(@player1)
    @game1.add_player(@player2)
    @player2.lose_life()
    @player2.lose_life()
    @player2.lose_life()
    @player2.lose_life()
    @player2.lose_life()
    @player2.lose_life()

    @game1.remove_dead_players()

    assert_equal(1,@game1.number_of_players())
  end

end
