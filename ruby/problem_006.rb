# Problem 6

# The sum of the squares of the first ten natural numbers is,
#       12 + 22 + ... + 102 = 385
#
# The square of the sum of the first ten natural numbers is,
#       (1 + 2 + ... + 10)**2 = 552 = 3025
# 
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
# 
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
 

def run
  # puts sum_square_difference(10)
    #=> 2640
  puts sum_square_difference(100)
    #=> ??
end

def sum_square_difference(max)
  square_of_sum(1..max) - sum_of_squares(1..max)
end

def square_of_sum(range)
  range.reduce(:+) ** 2
end

def sum_of_squares(range)
  range.reduce(0) { |sum, n| sum + n ** 2 }
end


if __FILE__ == $0
  run
end
