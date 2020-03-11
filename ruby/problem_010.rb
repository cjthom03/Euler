# Problem 10
# Summation of primes

# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

def run
  puts sum_of_primes_below(10)
    #=> 17

  puts sum_of_primes_below(2_000_000)
    #=> ??
end

def sum_of_primes_below(n)
  return 0 if n <= 3
  return 2 if n == 3
  
  i = 3
  sum = 2

  while i < n
    puts i
    prime = odd_is_prime?(i)
    puts prime
    puts "======="
    sum += i if prime
    #sum += i if odd_is_prime?(i)
    i += 2
  end

  sum
end

def odd_is_prime?(num)
  return false if num < 3
  
  i = 3
  while i < num
    return false if num % i == 0 
    i += 2
  end

  return true
end


if __FILE__ == $0
  run
end
