class CodeMaker
  attr_reader :code

  CODE_LENGTH = 4

  def initialize(code = nil)
    @code = code || generate_code
  end

  def correct?(guess)
    guess.downcase == code
  end

  def score(guess)
    Score.new(code, guess).evaluate
  end

  private

  def generate_code
    colors = ['r', 'g', 'y', 'b']
    (1..CODE_LENGTH).reduce('') do |result, _|
      result + colors.sample
    end
  end

  class Score
    def initialize(code, guess)
      @code = code
      @guess = guess
    end

    def evaluate
      [correct_locations_count, correct_colors_count]
    end

    private

    attr_reader :code, :guess

    def correct_locations_count
      CODE_LENGTH - non_exact_matches.count
    end

    def non_exact_matches
      code.chars.zip(guess.downcase.chars).select { |a, b| a !=b }
    end

    def correct_colors_count
      return 0 if correct_locations_count == CODE_LENGTH

      (remaining_code, remaining_guess) = non_exact_matches.transpose
      remaining_code = remaining_code.join('')

      remaining_guess.count do |guess_char|
        match = remaining_code.include? guess_char
        remaining_code = remaining_code.sub(guess_char, '')
        match
      end
    end
  end
end