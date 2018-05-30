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

  def add_letter(letter)
    count = 0
    is_letter_in_word = false
    for character in @word_array
      if character == letter
        @working_word_array[count] = letter
        is_letter_in_word = true
      end
      count += 1
    end
    @working_word = @working_word_array.join()
    return is_letter_in_word
  end

end
