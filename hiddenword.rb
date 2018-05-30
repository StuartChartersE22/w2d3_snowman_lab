class HiddenWord

  def initialize(word)
    set_word(word)
  end

  def set_word(word)
    @word = word
    @word_array = @word.split(//)
    @working_word_array = []
    for character in @word_array
      @working_word_array.push("*")
    end
    @working_word = @working_word_array.join()
  end

  def show_current_progress()
    return @working_word
  end

  def has_player_won?()
    return @word == @working_word
  end

end
