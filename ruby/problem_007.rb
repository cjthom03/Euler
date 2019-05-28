# Problem 7
# 10001st prime 

# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10 001st prime number?

def run
  puts nth_prime(6)
    #=> 13
  
  puts nth_prime(10001)
    #=> ??
end

def nth_prime(n)
  return nil if n < 1
  primes = [2]  
  i = 3

  until primes.length == n
    primes << i if odd_is_prime?(i)
    i += 2
  end

  primes.last
end

def odd_is_prime?(num)
  i = 3
  max = Math.sqrt(num).ceil

  while i <= max
    return false if num % i == 0
    i += 2
  end

  return true
end


if __FILE__ == $0
  run
end
