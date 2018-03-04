#Anastassia Bobokalonova
#Current Version: Terminal Towers of Hanoi with any number of disks

class TowersOfHanoi
  attr_reader :towers, :num_disks

  def initialize(num_disks)
    @num_disks = num_disks
    @towers = [(1..num_disks).to_a.reverse, [], []]
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
    print "Which tower do you want to select from? "
    from_tower = gets.chomp.to_i - 1
    print "Which tower do you want to move to? "
    to_tower = gets.chomp.to_i - 1

    until valid_move?(from_tower, to_tower)
      puts "Please enter a valid move."
      from_tower, to_tower = get_move
    end

    move(from_tower, to_tower)
  end

  def render
    rows = []
    (1..num_disks).to_a.reverse.each do |i|
      rows << towers.map {|tower| tower.length >= i ? tower[i - 1] : ' '}.join(' ')
    end
    puts rows
    puts "-----"
  end

  def valid_move?(from_tower, to_tower)
    from = towers[from_tower]
    to = towers[to_tower]
    return false if from.empty?
    return false if !to.empty? && from.last > to.last
    true
  end

  def won?
    return true if (towers[1].length == num_disks || towers[2].length == num_disks)
    false
  end

  def conclude
    puts "Congratulations, you win!"
    puts render
  end

end

if __FILE__ == $PROGRAM_NAME
  puts "-----------------------------------"
  puts "   Welcome to Towers of Hanoi!"
  puts "-----------------------------------"
  print "How many disks tall is the tower? "
  num_disks = gets.chomp.to_i
  puts "-----------------------------------\n\n"

  t = TowersOfHanoi.new(num_disks)
  t.play
end
