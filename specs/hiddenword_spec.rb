require("minitest/autorun")
require_relative("../hiddenword.rb")
require_relative("../game.rb")

class HiddenWordTest < MiniTest::Test

  def setup
    @word1 = HiddenWord.new("hello")
    @game1 = Game.new("test1")
  end

  def test_show_guessed_characters__none
    assert_equal("*****", @word1.show_current_progress())
  end

  def test_add_guessed_letter__in_word
    is_letter_in_word = @word1.add_letter("h")
    assert_equal("h****", @word1.show_current_progress())
    assert_equal(true, is_letter_in_word)
  end

  def test_add_guessed_letter__not_in_word
    is_letter_in_word = @word1.add_letter("j")
    assert_equal("*****", @word1.show_current_progress())
    assert_equal(false, is_letter_in_word)
  end

end
