# Problem 5
# Smallest multiple

# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

def run
  # puts smallest_multiple(10)
    #=> 2520
    
  puts smallest_multiple(20)
end

def smallest_multiple(max)
  min = max * (max - 1)
  i = 1
  multiple = nil
  
  until multiple
    sum = min * i
    multiple = sum if max.downto(1).all?{ |n| sum % n == 0 }
    i += 1
  end

  multiple
end


if __FILE__ == $0
  run
end
