require("minitest/autorun")
require_relative("../hiddenword.rb")
require_relative("../game.rb")

class HiddenWordTest < MiniTest::Test

  def setup
    @word1 = HiddenWord.new()
    @word1.set_word("hello")
  end

  def test_show_guessed_characters__none
    assert_equal("*****", @word1.show_current_progress())
  end

end
