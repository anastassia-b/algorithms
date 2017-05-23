#Anastassia Bobokalonova
#Current Version: Terminal Towers of Hanoi with 3 disks

class TowersOfHanoi
  attr_reader :towers

  def initialize
    @towers = [[3, 2, 1], [], []]
  end

  def play
    until won?
      puts render
      get_move
    end
    conclude
  end

  def move(from_tower, to_tower)
    disc = towers[from_tower].pop
    towers[to_tower].push(disc)
  end

  def get_move
    print "Which tower (1, 2, 3) do you want to select from? "
    from_tower = gets.chomp.to_i - 1
    print "Which tower (1, 2, 3) do you want to move to? "
    to_tower = gets.chomp.to_i - 1

    until valid_move?(from_tower, to_tower)
      puts "Please enter a valid move."
      from_tower, to_tower = get_move
    end

    move(from_tower, to_tower)
  end

  def render
    top_row = towers.map {|tower| tower.length >= 3 ? tower[2] : ' '}
    mid_row = towers.map {|tower| tower.length >= 2 ? tower[1] : ' '}
    bot_row = towers.map {|tower| tower.length >= 1 ? tower[0] : ' '}
    "#{top_row.join(' ')}\n#{mid_row.join(' ')}\n#{bot_row.join(' ')}\n-----"
  end

  def valid_move?(from_tower, to_tower)
    from = towers[from_tower]
    to = towers[to_tower]
    return false if from.empty?
    return false if !to.empty? && from.last > to.last
    true
  end

  def won?
    return true if (towers[1].length == 3 || towers[2].length == 3)
    false
  end

  def conclude
    puts "Congratulations, you win!"
    puts render
  end

end

if __FILE__ == $PROGRAM_NAME
  t = TowersOfHanoi.new
  t.play
end
