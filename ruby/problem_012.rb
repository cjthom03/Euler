# Problem (12)
# Highly divisible triangular number

# The sequence of triangle numbers is generated by adding the natural numbers. So the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28. The first ten terms would be:

#1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...

#Let us list the factors of the first seven triangle numbers:

 #1: 1
 #3: 1,3
 #6: 1,2,3,6
#10: 1,2,5,10
#15: 1,3,5,15
#21: 1,3,7,21
#28: 1,2,4,7,14,28
#We can see that 28 is the first triangle number to have over five divisors.

#What is the value of the first triangle number to have over five hundred divisors?

class TriangleNum
  attr_reader :count

  def initialize(count)
    @count = count
  end

  def value
    (count * (count + 1)) / 2
  end
end

class Divisors
  attr_reader :value

  def initialize(value)
    @value = value
  end

  def list
    return [value] if value <= 1
    lows = [1]
    highs = [value]

    (2..(value/2)).each do |low|
      break if low >= highs.first

      if value % low == 0
        lows << low
        highs.unshift(value/low)
      end
    end

    lows + highs
  end
end

def run
  count = 1
  divisors = []

  begin
    triangle_num = TriangleNum.new(count).value
    divisors = Divisors.new(triangle_num).list
    count +=1
  end until divisors.length > 500

  puts triangle_num
end


if __FILE__ == $0
  run
end