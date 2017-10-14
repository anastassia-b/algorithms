# Assume you have a method isSubstring which checks if one word is a
# substring of another. Given two substrings, s1 and s2, write code to check
# if s2 is a substring of s1 using only one call to isSubstring.


def isSubstring?(s1, s2)
  return false if s2.length != s1.length
  extended = s1 + s1
  extended.include?(s2)
end

p isSubstring?("waterbottle", "erbottlewat") == true
