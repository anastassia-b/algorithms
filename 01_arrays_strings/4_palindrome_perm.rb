# Given a string, write a function to check if it is a permutation of a palindrome.

def palindrome_perm?(str)
  ch_count = Hash.new(0)

  str.chars.each do |ch|
    ch_count[ch.downcase] += 1 unless ch == " "
  end

  odd_count = 0
  ch_count.values.each do |count|
    odd_count += 1 if count.odd?
    if odd_count > 1
      return false
      break
    end
  end

  true
end

p palindrome_perm?("tact coa") == true
p palindrome_perm?("racarce") == true
p palindrome_perm?("banana") == false
#"permutation like: "taco cat", etc.
# a palidrome has all even characters, except up to one.
# notice spaces get counted, unless I account for them not being important.
#think whether it accounts for all cases
