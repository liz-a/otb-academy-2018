require "dictionary"

class Hangman

  attr_reader :lives

  def initialize(test: false)
    @word = test ? Dictionary.new(test: true).get_word : 
                                        Dictionary.new.get_word
    @display = @word.inject([]) do |display,char|
      display << "_"
      display
    end

    @lives = 13
    @guessed_letters = []

  end

  def take_turn(letter)

    return "letter already guessed" if validator(letter)

    return "FAIL" if decrement_lives(letter)

    @guessed_letters << letter

    @word.each_with_index do |char, index|
      @display[index] = char if char == letter
    end

    @display.get
  end

  def validator(letter)
    true if @guessed_letters.include?(letter)
  end

  def decrement_lives(letter)
    if !@word.include?(letter)
      @lives = @lives.pred
      return true if @lives == 0
    end
  end

end

class Array
  def get
    join(" ")
  end
end