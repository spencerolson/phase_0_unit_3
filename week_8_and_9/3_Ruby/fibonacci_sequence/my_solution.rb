# U3.W8-9: 


# I worked on this challenge by myself.

# 2. Pseudocode
# 

# 3. Initial Solution
require 'bigdecimal'
def is_fibonacci?(num)
  is_perfect_square?(5*(num**2)+4) or is_perfect_square?(5*(num**2)-4)
end

def is_perfect_square?(num)
   # puts "Is #{num} a perfect square? Sqrt of #{num} is #{Math.sqrt(num.to_f)}, modded by 1 is #{Math.sqrt(num.to_f)%1}. #{num} is a perfect square: #{Math.sqrt(num.to_f)%1 == 0}"
  num = BigDecimal.new(num)
  num.sqrt(20) %1 == 0
end

# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
def assert(message)
  raise message unless yield
end

def random_fibonacci
   [0,1,1,2,3,5,8,13,21,34,55,89,144,233,377,610,987,1597,2584,4181,6765,10946].sample
end

assert("Assertion failed! Should return true when a integer is one number of the Fibonacci sequence"){is_fibonacci?(random_fibonacci) == true}

assert("Assertion failed! Should return true with a large Fibonacci number"){is_fibonacci?(8670007398507948658051921) == true}

assert("Assertion failed! Should return false when it's not in the Fibonacci seqence"){is_fibonacci?(random_fibonacci+100) == false}

assert("Assertion failed! Should return false on large non-Fibonacci numbers"){is_fibonacci?(927372692193078999171) == false}

# 5. Reflection 