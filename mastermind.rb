#Anastassia's Version of Mastermind

class Code
  attr_reader :pegs

  def initialize(pegs)
    @pegs = pegs
  end

  def self.random
    colors = ["R", "G", "B", "Y", "O", "P"]
    Code.new(colors.sample(4).join)
  end

  def self.parse(input)
    Code.new(input.upcase)
  end

  def [](idx)
    @pegs[idx]
  end

  def exact_matches(other_code)
    count = 0
    (0...4).each do |i|
      count += 1 if @pegs[i] == other_code[i]
    end
    count
  end

  def near_matches(other_code)
    count_overlap = 0
    @pegs.split.uniq.each do |peg|
      count_overlap += [@pegs.count(peg), other_code.pegs.count(peg)].min
    end

    count_overlap - self.exact_matches(other_code)
  end
end

class Game
  attr_reader :secret_code

  def initialize(secret_code=Code.random)
    @secret_code = secret_code
    @num_turns = 0
    @user_code = Code.new("----")
  end

  def play
    until game_over?
      get_guess
      display_matches
      @num_turns += 1
    end
    p "num_turns: #{@num_turns}"
  end

  def game_over?
    @secret_code.pegs == @user_code.pegs
  end

  def get_guess
    p "Enter 4-color guess (RGBYOP):"
    user_guess = gets.chomp
    @user_code = Code.new(user_guess)
    p "user_code.pegs: ", @user_code.pegs
    p "secret_code.pegs: ", @secret_code.pegs
  end

  def display_matches
    p "exact matches: #{@secret_code.exact_matches(@user_code)}"
    p "near matches: #{@secret_code.near_matches(@user_code)}"
  end
end

if __FILE__ == $PROGRAM_NAME
  game = Game.new
  game.play
end
