# Problem 4
# Largest Palindrome Product

# A palindromic number reads the same both ways.
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99
# Find the largest palindrome made from the product of two 3-digit numbers.

def run
  # puts largest_palindrome_product(2)
    #=> 9009

  puts largest_palindrome_product(3)
end

def largest_palindrome_product(digits)
  n = ("9" * digits).to_i
  n1, n2 = n, n
  largest_palindrome = 0

  n1.downto(0).each do |x|
    n2.downto(0).each do |y|
      prod = x * y
      largest_palindrome = prod if is_palindrome?(prod) && prod > largest_palindrome
    end
  end

  largest_palindrome
end

def is_palindrome?(num)
  str = num.to_s
  str == str.reverse  
end


if __FILE__ == $0
  run
end
