class HiddenWord

  def initialize(word)
    set_word(word)
  end

  def set_word(word)
    @word = word
    @word_array = @word.split(//)
    @hidden_word_array = []
    for character in @word_array
      @hidden_word_array.push("*")
    end
    @hidden_word = @hidden_word_array.join()
  end

  def show_current_progress()
    return @hidden_word
  end



end
