#Anastassia Bobokalonova

class Test
  def self.assert_equals(actual, expected)
    if actual == expected
      puts "Test passed: #{expected}"
    else
      puts "Error: #{actual} != #{expected}"
    end
  end
end
#Or:
def testing(actual, expected)
    Test.assert_equals(actual, expected)
end

#1. Maskify
def maskify(cc)
  if cc.length <= 4
    cc
  else
    "#" * (cc.length - 4) + cc[-4..-1]
  end
end

testing(maskify('4556364607935616'), '############5616');
testing(maskify('1'), '1');
testing(maskify('11111'), '#1111');

#Other solutions
def solution(cc)
  mask = "#"*cc[0..-5].length
  tail = (cc[-4..-1] || cc)
  mask + tail
end

def other_solution(cc)
  cc.gsub(/.(?=....)/,'#')
end


10.times do
  random_cc = ""
  [*0..30].sample.times {random_cc << [*"0".."9"].sample} #interesting
  Test.assert_equals(maskify(random_cc), solution(random_cc))
end

#* splat operator turns a range into an array without the enclosing [].
# Practicing * operator:
gene = ""
[*0..30].sample.times do
  gene << ["A", "C", "T", "G"].sample
end
puts "Random genetic segment: #{gene}"


#2. Sum of 2 smallest positive integers
def sum_two_smallest_num(numbers)
  sorted = numbers.sort
  sorted[0] + sorted[1]
end

#other solutions
# numbers.min(2).reduce(:+)
# numbers.sort[0..1].reduce(:+)

#3. Find the Integer that appears an odd number of times
def find_it(seq)
  # count = Hash.new(0)
  # seq.each {|el| count[el] += 1}
  # count.select {|el, count| count.odd?}.keys[0]
  seq.find { |n| seq.count(n).odd? }
  #seq.reduce(:^)
end

#4. Ones and Zeros
def binary_array_to_number(arr)
  num = 0
  arr.reverse.each_with_index do |bin, pos|
    num += bin * (2 ** pos)
  end
  num
end

#other good solutions, join as a string, then to_i(2) base converts!
#arr.join("").to_i(2)

#5.
def printer_error(s)
	# error = s.chars.count {|el| ("n".."z").include?(el)}
  # "#{error}/#{s.length}"
  "#{s.count('n-z')}/#{s.length}"
  # s.scan(/[n-z]/).length
end

#6.
# def find_outlier(integers)
#   if integers[0].odd? && integers[1].odd?
#     integers.find {|int| int.even?}
#   elsif integers[0].even? && integers[1].even?
#     integers.find {|int| int.odd?}
#   else
#     return integers.find {|int| int.odd?} if integers[2].even?
#     return integers.find {|int| int.even?} if integers[2].odd?
#   end
# end

# def find_outlier(integers)
#   integers.partition(&:odd?).find(&:one?).first
# end

def find_outlier(integers)
  outlier = integers.first(3).count(&:even?) < 2? :even? : :odd?
  integers.find(&outlier)
end

#7.
def digital_root(n)
  n < 10? n : digital_root(n.to_s.chars.map(&:to_i).reduce(:+))
end

def clever_digital_root(n)
  n>0 ? 1 + ((n.to_i - 1) % 9) : 0
end

testing((digital_root(1234)), 1)

#8.
def high_and_low(numbers)
  nums = numbers.split.map(&:to_i)
  "#{nums.max} #{nums.min}"
end

#9.
def longest_consec(strarr, k)
  longest = ""
  return longest if k < 1 || k > strarr.size

  (0..strarr.length-k).each do |i|
    long = strarr[i..(i+k-1)].join
    longest = long if long.length > longest.length
  end
  longest
end

# return "" unless k.between?(1, strarr.length)
# strarr.each_cons(k).map(&:join).max_by(&:length) || ""

testing(longest_consec(["zone", "abigail", "theta", "form", "libe", "zas"], 2), "abigailtheta")
testing(longest_consec([], 3), "")
testing(longest_consec(["zone", "abigail", "theta", "form", "libe", "zas"], -2), "")
testing(longest_consec(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 3), "ixoyx3452zzzzzzzzzzzz")
testing(longest_consec(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 15), "")
testing(longest_consec(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 0), "")


#10.
def filter_list(l)
  l.reject {|el| el.is_a?(String)}
end

Test.assert_equals(filter_list([1,2,'a','b']),[1,2])
Test.assert_equals(filter_list([1,'a','b',0,15]),[1,0,15])
Test.assert_equals(filter_list([1,2,'aasf','1','123',123]),[1,2,123])

#11.
def delete_nth(order, max_e)
  filtered = []
  order.each do |el|
    if filtered.count(el) < max_e
      filtered << el
    end
  end
  filtered
end

testing((delete_nth([1,1,1,1], 2)), [1,1])
testing((delete_nth([20,37,20,21], 1)), [20,37,21])

#12.
# def solution(number)
#   multiples = []
#   (1...number).each do |num|
#     multiples << num if num % 3 == 0 || num % 5 == 0
#   end
#   multiples.reduce(:+)
# end

#=> better way:
def solution(number)
  (1...number).select {|i| i%3==0 || i%5==0}.inject(:+)
end

#13.
# Write a function called validParentheses that takes a string of parentheses,
# and determines if the order of the parentheses is valid. validParentheses
# should return true if the string is valid, and false if it's invalid.
def valid_parentheses(string)
  left, right = 0, 0
  string.chars.each do |el|
    left += 1 if el == "("
    right += 1 if el == ")"
    break false if (left - right) < 0
  end
  return false if (left - right) != 0
  true
end

# def valid_parentheses(string)
#   open = 0
#   string.chars.each do |c|
#     open += 1 if c == "("
#     open -= 1 if c == ")"
#     return false if open < 0
#   end
#   open == 0
# end

# def valid_parentheses(string)
#   ~ Regexp.new(string) == nil rescue false
# end

# def valid_parentheses(string)
#  str = string.delete("^()")
#  while str.gsub!("()",''); end
#  str == ''
# end


Test.assert_equals(valid_parentheses("  ("),false)
Test.assert_equals(valid_parentheses(")test"),false)
Test.assert_equals(valid_parentheses(""),true)
Test.assert_equals(valid_parentheses("hi())("),false)
Test.assert_equals(valid_parentheses("hi(hi)()"),true)

#14. Calculating with functions
class Object
  %w[zero one two three four five six seven eight nine].each_with_index do |name, n|
    define_method(name) do |args = nil|
      args ? n.send(*args) : n.to_f
    end
  end

  %w[plus + minus - times * divided_by /].each_slice(2) do |name, symbol|
    define_method(name) do |n|
      [symbol, n]
    end
  end
end

Test.assert_equals seven(times(five)), 35
Test.assert_equals four(plus(nine)), 13
Test.assert_equals eight(minus(three)), 5
Test.assert_equals six(divided_by(two)), 3

#15. Create Phone NUmber
def createPhoneNumber(numbers)
  "(#{numbers[0..2].join}) #{numbers[3..5].join}-#{numbers[6..9].join}"
end
Test.assert_equals(createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]), "(123) 456-7890");

#16. Is a number prime?
def isPrime(num)
  return false if num < 2
  (2...num).each {|n| return false if num % n == 0}
  true
end

Test.assert_equals(isPrime(2), true)
Test.assert_equals(isPrime(4), false)
Test.assert_equals(isPrime(11), true)

#17. WeIrD StRiNg CaSe
# Write a function toWeirdCase (weirdcase in Ruby) that accepts a string,
# and returns the same string with all even indexed characters in each word
# upper cased, and all odd indexed characters in each word lower cased.
# The indexing just explained is zero based, so the zero-ith index is even,
# therefore that character should be upper cased.

def weirdcase string
  words = string.split
  words.map! do |word|
    new_word = ""
    word.chars.each_with_index do |ch, i|
      new_word << ch.upcase if i.even?
      new_word << ch.downcase if i.odd?
    end
    new_word
  end
  words.join(" ")
end

Test.assert_equals(weirdcase('This is a test'), 'ThIs Is A TeSt');

# Slightly shorter:
# def weirdcase(string)
#   string.split(' ').map do |word|
#     word.split('').each_with_index.map do |char, i|
#       i % 2 == 0 ? char.upcase : char.downcase
#     end.join('')
#   end.join(' ')
# end

# Using Regex:
# def weirdcase string
#   string.gsub(/(\w{1,2})/) { |s| $1.capitalize }
# end
