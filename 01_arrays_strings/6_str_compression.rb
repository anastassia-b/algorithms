#Implement a method to perform basic string compression using the
#counts of repeated characters. If compressed is not smaller than original,
# return the original. Has only uppercase and lowercase letters.


def compress(str)

end

p compress("aabcccccaaa") == "a2b1c5a3"
p compress("aaaaaaa") == "a7"
p compress("ababa") == "ababa" #NOT "a1b1a1b1a1"
