# Problem 1
# Multiples of 3 and 5

# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.


def sum_of_multiples_of_3_and_5(max)
  sum = 0  
  (3...max).each { |n| sum += n if multiple_of_3_or_5?(n) } 
  sum
end

def multiple_of_3_or_5?(n)
  n % 3 == 0 || n % 5 == 0
end


puts(sum_of_multiples_of_3_and_5(10))
  # => 23

puts(sum_of_multiples_of_3_and_5(1000))
  # => ???
