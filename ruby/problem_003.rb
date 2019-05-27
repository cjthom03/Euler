# Problem 3
# Largest Prime Factor

# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?


def run
  puts largest_prime_factor(21)
  
  puts largest_prime_factor(13195)
    #=> 29

  puts largest_prime_factor(600851475143)
    #=> ??
end

def largest_prime_factor(num)
  max_prime = 0

  # 2 is a prim
  # divide by 2 until the number is odd
  # 2 is now the largest prime found so far
  
  while num % 2 == 0
    max_prime = 2
    num /= 2
  end


  # the next possible prime factor is 3
  #
  # we only need to check factors less the sqrt(num)
  # because we are dividing num by the factor, reducing num in the process
  # and if the largest prime factor is greater than sqrt(num), it must be the number itself
  #   WHY?
  #   sqrt(21) = 4.58  // prime factors [3, 7]
  #   every set of factors x and y must evaluate to (x * y) == num == sqrt(num) * sqrt(num)
  #   if num has a factor greater than sqrt(num), it's pair must be less than sqrt(num)
  #   once factored down with every prime factor below the sqaure root
  #   the only possible remainders are 1 or a prime number

  i = 3
  max = Math.sqrt(num).ceil

  while i < max
    while num % i == 0
      max_prime = i
      num /= i
    end
    i += 2
  end

  # num is now the remainder after everything has been factored out
  # the remainder is either 1 or a prime number greater than the square root of the original number
  max_prime = num if num > 1
  max_prime
end

if __FILE__ == $0
  run
end
