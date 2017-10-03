# Given two strings, write a method to decide if one is a permutation of the other.

#permutation is
def permutation?(a, b)
  return false if a.length != b.length
  a_chars = Hash.new(0)
  b_chars = Hash.new(0)

  a.length.times do |i|
    a_chars[a[i]] += 1
    b_chars[b[i]] += 1
  end

  a_chars.each do |k, v|
    return false if v != b_chars[k]
  end

  return true
end

p permutation?("ana", "nah") == false
p permutation?("abcdef", "fedabc") == true
p permutation?("anastassia", "anastasia") == false

#Notes:
# prematurely terminate if lengths are different.
#iterate through each letter... make a hash map of counts? requires building the hashes first.

#or go up one, down one.
#or you can sort and check equality, but not the best space time. O(nlogN).

# a.chars.sort == b.chars.sort

#can return false once you hit a letter that doesn't exist in the other.
