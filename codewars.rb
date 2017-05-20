#Anastassia Bobokalonova
#May 15-18, 2017

#1. Maskify

class Test
  def self.assert_equals(actual, expected)
    if actual == expected
      puts "Test passed: #{expected}"
    else
      puts "Error: #{actual} != #{expected}"
    end
  end
end

def testing(actual, expected)
    Test.assert_equals(actual, expected)
end


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

#other
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
testing(longest_consec(["ejjjjmmtthh", "zxxuueeg", "aanlljrrrxx", "dqqqaaabbb", "oocccffuucccjjjkkkjyyyeehh"], 1), "oocccffuucccjjjkkkjyyyeehh")
testing(longest_consec([], 3), "")
testing(longest_consec(["itvayloxrp","wkppqsztdkmvcuwvereiupccauycnjutlv","vweqilsfytihvrzlaodfixoyxvyuyvgpck"], 2), "wkppqsztdkmvcuwvereiupccauycnjutlvvweqilsfytihvrzlaodfixoyxvyuyvgpck")
testing(longest_consec(["wlwsasphmxx","owiaxujylentrklctozmymu","wpgozvxxiu"], 2), "wlwsasphmxxowiaxujylentrklctozmymu")
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
