require("minitest/autorun")
require_relative("../game.rb")
require_relative("../hiddenword.rb")
require_relative("../player.rb")

class GameTest < MiniTest::Test

  def setup
    @game1 = Game.new("test1")
    @word1 = HiddenWord.new("hello")
    @player1 = Player.new("Stuart")
  end

  def test_game_has_name
    assert_equal("test1", @game1.name())
  end

  def test_add_a_player
    @game1.add_player(@player1)
    assert_equal(1,@game1.number_of_players())
  end

end
