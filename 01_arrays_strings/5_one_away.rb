#There are 3 types of edits on strings: insert a char, remove a char,
#and replace a char. Given 2 strings, write a function to check if they are
#one or zero edits away.

def one_away?(str1, str2)
  #if lengths differ by > 1, return false.
  return false if (str1.length - str2.length).abs > 1

  #count have difference counter, and update pointer accordingly.
  difference = 0
  idx1, idx2 = 0, 0

  while ((idx1 < str1.length) && (idx2 < str2.length))
    #equal
    if str1[idx1] == str2[idx2]
      idx1 += 1
      idx2 += 1
      #replaced a char
    elsif str1[idx1 + 1] == str2[idx2 + 1]
      (difference == 1) ? (return false) : (difference += 1)
      idx1 += 2
      idx2 += 2
    #inserted a char
    elsif str1[idx1] == str2[idx2 + 1]
      (difference == 1) ? (return false) : (difference += 1)
      idx1 += 1
      idx2 += 2
    #deleted a char
    elsif str1[idx1 + 1] == str2[idx2 + 1]
      (difference == 1) ? (return false) : (difference += 1)
      idx1 += 2
      idx2 += 1
    else
      break
    end
  end

  difference > 1 ? false : true
end

#All these tests pass:
p one_away?("pale", "ple") == true
p one_away?("pales", "pale") == true
p one_away?("pale", "gale") == true
p one_away?("pale", "bake") == false
p one_away?("pale", "pl") == false
p one_away?("pale", "aple") == true

#Not mine Solution:

def one_away(init, final)
  letter_diff = Hash.new(0)

  if (init.length - final.length).abs > 1
    return false
  else
    #populates hash with letter frequencies of word 1
    init.length.times { |i| letter_diff[init[i]] += 1}
    #removes letters present in second word.
    init.length.times { |i| letter_diff[init[i]] -= 1}
    #go through each letter
    letter_diff.keys.each do |letter|
      letter_diff.delete(letter) if letter_diff[letter] == 0
    end

    #Wait, I disagree with this solution. What if the letters are in a different order?
    return false if letter_diff.length > 1
  end

  return true
end

p one_away("pale", "ple") == true
p one_away("pales", "pale") == true
p one_away("pale", "gale") == true
p one_away("pale", "bake") == false #THIS ONE FAILS. IT RETURNS TRUE.
p one_away("pale", "pl") == false
p one_away("pale", "aple") == true

#Idea: Refactor to have 3 helper methods, based on the length of the strings.
#If same length, check just one replacement letter. Otherwise check insertion/deletion.
