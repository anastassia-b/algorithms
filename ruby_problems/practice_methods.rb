#Anastassia Bobokalonova

# Define a method that accepts an array of words and returns an array of those
# words whose vowels appear in order. You may wish to write a helper method:
# ordered_vowel_word?
def ordered_vowel_words(words)
  words.select {|word| ordered_vowel_word?(word)}
end

def ordered_vowel_word?(word)
  current_vowel = ""
  vowels = ["a", "e", "i", "o", "u"]
  word.each_char do |ch|
    if vowels.include?(ch.downcase)
      if ch > current_vowel
        current_vowel = ch
      else
        return false
      end
    end
  end
  true
end

# Given an array of numbers, return an array of all the products remaining when
# each element is removed from the array. You may wish to write a helper method:
# array_product.

# products_except_me([2, 3, 4]) => [12, 8, 6], where: 12 because you take out 2,
# leaving 3 * 4. 8, because you take out 3, leaving 2 * 4. 6, because you take out
# 4, leaving 2 * 3

# products_except_me([1, 2, 3, 5]) => [30, 15, 10, 6], where: 30 because you
# take out 1, leaving 2 * 3 * 5 15, because you take out 2, leaving 1 * 3 * 5
# 10, because you take out 3, leaving 1 * 2 * 5 6, because you take out 5,
# leaving 1 * 2 * 3
def products_except_me(numbers)
  numbers.reduce([]) do |products, el|
    products << array_product(numbers) / el
  end
end

def array_product(array)
  array.reduce(:*)
end


# Define a method that takes a string of lower-case letters and returns an array
# of all the letters that do not occur in the method's argument.
def missing_letters(string)
  missing = []
  ("a".."z").each do |letter|
    missing << letter if !string.include?(letter)
  end
  missing
end

# Define a method that accepts two years and returns an array of the years
# within that range (inclusive) that have no repeated digits. Hint: helper
# method?
def no_repeat_years(first_yr, last_yr)
  (first_yr..last_yr).reduce([]) do |years, year|
    if not_repeat_year?(year)
      years << year
    else
      years
    end
  end
end

def not_repeat_year?(year)
  year.to_s.chars == year.to_s.chars.uniq
end

# Define a method that takes a string of lower-case letters and returns an array
# of all the letters that do not occur in the method's argument.
def missing_letters(string)
  missing = []
  ("a".."z").each do |letter|
    missing << letter if !string.include?(letter)
  end
  missing
end

# Define a method that accepts two years and returns an array of the years
# within that range (inclusive) that have no repeated digits. Hint: helper
# method?
def no_repeat_years(first_yr, last_yr)
  (first_yr..last_yr).reduce([]) do |years, year|
    if not_repeat_year?(year)
      years << year
    else
      years
    end
  end
end

def not_repeat_year?(year)
  year.to_s.chars == year.to_s.chars.uniq
end

# HARD

# Define a method that, given an array of songs at the top of the charts,
# returns the songs that only stayed on the chart for a week at a time. Each
# element corresponds to a song at the top of the charts for one particular
# week. Songs CAN reappear on the chart, but if they don't appear in consecutive
# weeks, they're "one-week wonders." Suggested strategy: find the songs that
# appear multiple times in a row and remove them. You may wish to write a helper
# method no_repeats?
def one_week_wonders(songs)
  wonders = []
  all_songs = songs.uniq

  all_songs.each do |song|
    wonders << song if no_repeats?(song, songs)
  end

  wonders
end

def no_repeats?(song_name, songs)
  (0...songs.length - 1).each do |i|
    if songs[i] == song_name
      return false if songs[i + 1] == song_name
    end
  end
  true
end

# Define a method that, given a string of words, returns the word that has the
# letter "c" closest to the end of it. If there's a tie, return the earlier
# word. Ignore punctuation. If there's no "c", return an empty string. You may
# wish to write the helper methods c_distance and remove_punctuation.

def for_cs_sake(string)
  remove_punctuation(string)
  return "" unless string.include?("c")

  c_words = string.split.select {|word| word.include?("c")}
  c_words.sort_by {|word| c_distance(word)}[0]
end

def c_distance(word)
  #Reverse the word to get the smallest positive index for c
  #More intuitive to sort
  word.reverse.index("c")
end

def remove_punctuation(string)
  string.delete!(".,!?;:")
end

# Define a method that, given an array of numbers, returns a nested array of
# two-element arrays that each contain the start and end indices of whenever a
# number appears multiple times in a row. repeated_number_ranges([1, 1, 2]) =>
# [[0, 1]] repeated_number_ranges([1, 2, 3, 3, 4, 4, 4]) => [[2, 3], [4, 6]]

def repeated_number_ranges(arr)
  ranges = []
  idx = 0
  while idx < arr.length - 1
    idx += 1
    if arr[idx] == arr[idx - 1]
      start_idx = idx - 1
      until arr[idx] != arr[start_idx]
        end_idx = idx
        idx += 1
      end
      ranges << [start_idx, end_idx]
    end
  end
  ranges
end

# Other Solution, more readable:
# def repeated_number_ranges(arr)
#   ranges = []
#   start_index = nil
#
#   arr.each_with_index do |el, idx|
#     next_el = arr[idx + 1]
#     if el == next_el
#       start_index = idx unless start_index
#     elsif start_index
#       ranges.push([start_index, idx])
#       start_index = nil
#     end
#   end
#   ranges
# end

# Define a method that, given a string, returns the most common vowel. If
# there's a tie, return the vowel that occurs earlier in the alphabet. Assume
# all letters are lower case.
def most_common_vowel(string)
  vowel_count = Hash.new(0)
  vowels = ["a", "e", "i", "o", "u"]
  string.each_char do |ch|
    vowel_count[ch] += 1 if vowels.include?(ch)
  end

  vowel_count.sort_by {|ch, count| count}.last.first
end

# Define a method that, given an array of specimens, returns the biodiversity
# index as defined by the following formula: number_of_species**2 *
# smallest_population_size / largest_population_size biodiversity_index(["cat",
# "cat", "cat"]) => 1 biodiversity_index(["cat", "leopard-spotted ferret",
# "dog"]) => 9
def biodiversity_index(specimens)
  species_count = Hash.new(0)
  specimens.each do |species|
    species_count[species] += 1
  end
  number_of_species = species_count.length
  smallest_population_size = species_count.values.min
  largest_population_size = species_count.values.max

  number_of_species ** 2 * smallest_population_size / largest_population_size
end


# Write a method that returns the decimal remainder of dividing two floats.
# The decimal remainder is the right side of the decimal point
# (the "fractional part") of the quotient.
# (dec_remainder_of_two_floats(8.0, 5.0) => 0.6 because 8.0 / 5.0 => 1.6)
def dec_remainder_of_two_floats(f_dividend, f_divisor)
  f_quotient = f_dividend / f_divisor
  f_quotient - f_quotient.to_i
end

# Write a method that returns the decimal remainder of dividing two integers.
# HINT: Use dec_remainder_of_two_floats as a helper method,
# but don't forget to pass the proper type of argument
def dec_remainder_of_two_integers(i_dividend, i_divisor)
  dec_remainder_of_two_floats(i_dividend.to_f, i_divisor.to_f)
end

# Write a method that returns the integer remainder of its two arguments.
# (i.e., what using the modulo operator would return).
# You may not use the modulo operator.
# Assume the arguments are integers.
def int_remainder_without_modulo(i_dividend, i_divisor)
  dec_remainder = dec_remainder_of_two_floats(i_dividend.to_f, i_divisor.to_f)
  (dec_remainder * i_divisor).round
end

# Define a method that, given the string of a respectable business sign, returns
# a boolean indicating whether pranksters can make a given vandalized string
# using the available letters. Ignore capitalization and punctuation.
# can_tweak_sign("We're having a yellow ferret sale for a good cause over at the
# pet shop!", "Leopard ferrets forever yo") => true
def can_tweak_sign?(normal_sign, vandalized_sign)
  normal_count = character_count(normal_sign)
  vandalized_count = character_count(vandalized_sign)
  vandalized_count.each do |letter, count|
    return false if normal_count[letter] < count
  end
  true
end

def character_count(str)
  count = Hash.new(0)
  str.each_char do |ch|
    count[ch.downcase] += 1
  end
  count
end

# Options Hashes
#
# Write a method `transmogrify` that takes a `String`. This method should
# take optional parameters `:times`, `:upcase`, and `:reverse`. Hard-code
# reasonable defaults in a `defaults` hash defined in the `transmogrify`
# method. Use `Hash#merge` to combine the defaults with any optional
# parameters passed by the user. Do not modify the incoming options
# hash. For example:
#
# ```ruby
# transmogrify("Hello")                                    #=> "Hello"
# transmogrify("Hello", :times => 3)                       #=> "HelloHelloHello"
# transmogrify("Hello", :upcase => true)                   #=> "HELLO"
# transmogrify("Hello", :upcase => true, :reverse => true) #=> "OLLEH"
#
# options = {}
# transmogrify("hello", options)
# # options shouldn't change.
# ```
def transmogrify(str, options = {})
  defaults = {times: 1, upcase: false, reverse: false}
  options = defaults.merge(options)

  new_str = str * (options[:times])
  new_str.upcase! if options[:upcase]
  new_str.reverse! if options[:reverse]
end
