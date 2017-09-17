# Implement an algorithm to determine if a string has all unique characters.
# What if you cannot use additional data structures?

# brute force:
def unique(str)
  letters = []
  str.chars.each_with_index do |ch, i|
    if letters.include?(ch)
      return false
      break
    else
      letters << ch
    end
  end
  true
end


# puts(unique("anastassia") == false)
# puts(unique("april") == true)

# Space optimizations
  # don't need to make a letters array if sub index into string.

# Time optimization

# Notes
# - Ask if string is ASCII or Unicode (if not ASCII, increase storage size).
# - Return false if string length exceeds number of unique characters in alphabet (128/256).

def unique?(str)
  char_set = Hash.new(0)

  str.length.times do |i|
    if char_set[str[i]] > 0
      # puts char_set {"a"=>1, "n"=>1}
      return false
      break
    end
    # note, 0 is truthy in ruby
    char_set[str[i]] += 1
  end
  # puts char_set {"a"=>1, "p"=>1, "r"=>1, "i"=>1, "l"=>1}
  true
end

puts(unique?("anastassia") == false)
puts(unique?("april") == true)
