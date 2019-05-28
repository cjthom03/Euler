# Problem 9
# Special Pythagorean Triplet

# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
#
#         a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.
#
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

def run
  puts triplet(1000)
end

def triplet(sum)
  # apparently, a < b < c
  # and (a < sum / 3) and (a < b < sum / 2)

  a = 1
  a_max = (sum / 3.0).ceil
  b_max = (sum / 2.0).ceil

  while a < a_max
    b = a
    while b < b_max
      c2 = (a**2) + (b**2)
      c = Math.sqrt(c2)
      return (a * b * c) if a + b + c == sum
      b += 1
    end
    a += 1
  end

  return "Nope"
end 


if __FILE__ == $0
  run
end
