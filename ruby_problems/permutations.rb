def permutations(array)
  return [array] if array.length <= 1

  first = array.shift
  perms = permutations(array)
  total_perms = []

  perms.each do |perms|
    (0..perm.length).each do |i|
      total_perms << perm[0...i] + [first] + perm[i..-1]
    end
  end

  total_perms
end
