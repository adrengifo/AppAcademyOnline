class Hangman
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]

  
  def self.random_word
    word = DICTIONARY.sample()
    return word
  end
  
  def initialize()
    @secret_word = Hangman.random_word
    @guess_word = Array.new(@secret_word.length, "_")
    @attempted_chars = []
    @remaining_incorrect_guesses = 5
  end

  def guess_word
    return @guess_word
  end

  def attempted_chars
    return @attempted_chars
  end

  def remaining_incorrect_guesses
    return @remaining_incorrect_guesses
  end

  def already_attempted? (char)
    return @attempted_chars.include?(char)
  end

  def get_matching_indices(char)
    indices = []
    @secret_word.each_char.with_index {|ele, idx| indices << idx if ele == char }
    return indices
  end

  def fill_indices (char, indices)
    indices.each {|idx| @guess_word[idx] = char}
  end
  
  def try_guess (char)
    if self.already_attempted? (char)
      puts "that has already been attempted"
      return false
    end

    @attempted_chars << char

    matches = self.get_matching_indices(char)
    self.fill_indices(char, matches)
    @remaining_incorrect_guesses -= 1 if matches.empty?
    return true
  end

  def ask_user_for_guess 
    puts 'Enter a char:'
    user_char = gets.chomp
    self.try_guess(user_char)
  end

  def win?
    if @guess_word.join == @secret_word
      print 'WIN'
      return true
    end
    return false
  end

  def lose?
    if @remaining_incorrect_guesses == 0 
      print 'LOSE'
      return true
    end
    return false
  end

  def game_over?
    if self.win? || self.lose?
      print @secret_word
      return true
    end
    return false
  end
end
