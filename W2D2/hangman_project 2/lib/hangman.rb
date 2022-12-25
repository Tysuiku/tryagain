class Hangman

  attr_reader :guess_word, :attempted_chars, :remaining_incorrect_guesses
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]
    def self.random_word
      DICTIONARY.sample
    end

    def initialize
      @secret_word = Hangman.random_word
      @guess_word = Array.new(@secret_word.length) {"_"}
      @attempted_chars = []
      @remaining_incorrect_guesses = 5
    end

    def already_attempted?(char)
      attempted_chars.include? char
    end

    def get_matching_indices(char)
      arr = []
      @secret_word.each_char.with_index { |c, i| arr << i if char == c}
      arr
    end

    def fill_indices(char, indices)
      indices.each { |i| @guess_word[i] = char}
    end

    def try_guess(char)
      if self.already_attempted?(char)
        p "that has already been attempted"
        return false
      end

      @attempted_chars << char
        matching = self.get_matching_indices(char)
        if matching.empty?
          @remaining_incorrect_guesses -= 1
        else
          self.fill_indices(char, matching)
        end

        true
    end

    def ask_user_for_guess
      p "Enter a char"
      guess = gets.chomp
      self.try_guess(guess)
    end

    def win?
      if @secret_word == @guess_word.join("")
        p "WIN"
        return true
      end
      false
    end

    def lose? 
      if remaining_incorrect_guesses == 0
        p "LOSE"
        return true
        end
        false
    end

    def game_over?
      if self.win? || self.lose?
        p @secret_word
        return true
      end
       
      false
    end
end

#break day