require("minitest/autorun")
require_relative("../player.rb")

class PlayerTest < MiniTest::Test

  def setup
    @player1 = Player.new("Stuart")
  end

  def test_player_has_name
    assert_equal("Stuart", @player1.name())
  end

  def test_player_loses_life
    @player1.lose_life()
    assert_equal(5, @player1.lives())
  end

end
