# Write a method to replace all spaces in a string with %20.
#
# Example: "Mr John Smith    ", 13
# Output: "Mr%20John%20Smith"

def urlify(str, num)
  spaces = 0
  str.chars.each do
    spaces += 1
  end
  #why spaces / 3? Max number we could transform?
  spaces /= 3

  num.times do |i|
    if str[i] == " " && spaces > 0
      str[i] = "%20"
      spaces -= 1
    end
  end

  #Delete excess.
  return str.delete(" ")
end

puts urlify("Mr John Smith    ", 13) == "Mr%20John%20Smith"
