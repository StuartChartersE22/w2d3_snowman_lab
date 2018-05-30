require("minitest/autorun")
require_relative("../game.rb")
require_relative("../hiddenword.rb")

class GameTest < MiniTest::Test

  def setup
    @game1 = Game.new("test1")
    @word1 = HiddenWord.new("hello")
  end

  def test_game_has_name
    assert_equal("test1", @game1.name())
  end

end
