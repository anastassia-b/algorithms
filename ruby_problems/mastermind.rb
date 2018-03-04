#Anastassia Bobokalonova
#Restart Mastermind, V2
#May 27, 2017

class Code
  attr_reader :pegs

  PEGS = {R:"Red", Y:"Yellow", O:"Orange", G:"Green", B:"Blue", P:"Purple"}

  def self.parse(other_str)
    other_pegs = other_str.upcase.chars.map(&:to_sym)
    other_pegs.each {|color| raise "Invalid Colors!" unless PEGS[color]}
    Code.new(other_pegs)
  end

  def self.random
    random_pegs = PEGS.keys.sample(4)
    Code.new(random_pegs)
  end

  def initialize(pegs)
    @pegs = pegs
  end

  def [](pos)
    @pegs[pos]
  end

  def exact_matches(other_code)
    count = 0
    other_code.pegs.each_with_index do |color, i|
      count += 1 if color == @pegs[i]
    end
    count
  end

  def near_matches(other_code)
    count = 0
    other_code.pegs.uniq.each do |color|
      count += [@pegs.count(color), other_code.pegs.count(color)].min
    end
    count - exact_matches(other_code)
  end

  def ==(other_code)
    return false unless other_code.class == Code
    @pegs == other_code.pegs
  end
end

class Game
  attr_reader :secret_code

  def initialize(code = Code.random)
    @secret_code = code
  end

  def get_guess
    puts "\n.~*~* Please enter a 4-color guess *~*~."
    guess = gets.chomp
    Code.parse(guess)
  end

  def display_matches(other_code)
    puts "\n--> Exact matches: #{@secret_code.exact_matches(other_code)}"
    puts "--> Near matches: #{@secret_code.near_matches(other_code)}"
  end

  def play
    puts '-' * 24
    puts " Welcome to Mastermind!"
    puts "  Colors: R Y O B P G"
    puts '-' * 24

    turns = 5
    until turns == 0
      puts "Turns remaining: #{turns}"
      guess_code = get_guess
      display_matches(guess_code)
      break if @secret_code == guess_code
      turns -= 1
    end

    turns == 0 ? (puts "\nYou're out of turns!") : (puts "Congrats, you win!!!")
  end

end


if __FILE__ == $PROGRAM_NAME
  game = Game.new
  game.play
end
