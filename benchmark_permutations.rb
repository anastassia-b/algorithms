require 'byebug'

$actual = 0

def permutations(array)
  return [array] if array.length <= 1

  first = array.shift
  perms = permutations(array)
  total_permutations = []

  perms.each do |perm|
    (0..perm.length).each do |i|
      $actual += 1
      total_permutations << perm[0...i] + [first] + perm[i..-1]
    end
  end
  total_permutations
end

def benchmark_results(n = 10)
  puts "\n|n|\tn!|\tactual|\tdifference|\t\tn*n!|"
  puts "|---|---|---|---|---|"
  n.times do |i|
    next if i == 0
    arr = (1..i).to_a
    n_factorial = arr.reduce(:*)
    permutations(arr)
    difference = $actual/(n_factorial).to_f
    puts "|#{i}|\t#{n_factorial}|\t#{$actual}|\t#{difference}|\t#{n_factorial * i}|"
    $actual = 0
  end

end

benchmark_results
