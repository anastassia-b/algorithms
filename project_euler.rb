#May 10, 2017

#1
# If we list all the natural numbers below 10 that are multiples of 3 or 5,
# we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

sum = 0
(1...1000).each do |num|
  if num % 3 == 0 || num % 5 == 0
    sum += num
  end
end
puts "1. #{sum}"

#2
# By considering the terms in the Fibonacci sequence whose values do not
# exceed four million, find the sum of the even-valued terms.

def fibs_up_to(max)
  i1, i2 = 1, 1
  while i1 < max
    yield i1
    i1, i2 = i2, i1 + i2
  end
end

def fib_even_sum(max)
  sum = 0
  fibs_up_to(max) do |fib|
    sum += fib if fib.even?
  end
  sum
end

puts "2. #{fib_even_sum(4000000)}"

#3
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

def prime?(num)
  return false if num == 1
  return true if num == 2
  (2...num).each do |divisor|
    return false if num % divisor == 0
  end
  true
end

def next_prime(num)
  num += 1
  until prime?(num)
    num += 1
  end
  num
end

def largest_prime_factor(num)
  d = 2
  factors = []
  until prime?(num)
    if num % d == 0
      factors << d
      num = num / d
    end
    d = next_prime(d)
  end
  factors << num
  factors.max
end

puts "3. #{largest_prime_factor(600851475143)}"

#4
#Largest palindromic 3 digit number

def palindrome?(num)
  num.to_s == num.to_s.reverse
end

#need to optimize
def find_largest_palindrome
  num = 1
  largest = 999 * 999
  until palindrome?(largest)
    i1 = 999 - num
    (1..num).each do |n|
      i2 = 999 - n
      largest = i1 * i2
      if palindrome?(largest)
        #puts i1, i2
        return largest
      end
    end
    num += 1
  end

end

puts "4. #{find_largest_palindrome}"
