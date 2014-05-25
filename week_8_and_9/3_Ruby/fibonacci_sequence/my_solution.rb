# U3.W8-9: 


# I worked on this challenge by myself.

# 2. Pseudocode
	#1. Create a function named is_fibonacci? that takes a number as a parameter
	#2. In is_fibonacci?, calculate 5*(num^2)+4 and 5*(num^2)-4, and pass these values to is_perfect_square?. If is_perfect_square? returns true for either one, have is_fibonacci? return true.
	#3. Create a function named is_perfect_square? that takes a number as a parameter, and returns true if that number is a perfect square (i.e. if the square root of that number mod 1 equals 0)

# 3. Initial Solution
#require 'bigdecimal'
# def is_fibonacci?(num)
#   is_perfect_square?(5*(num**2)+4) or is_perfect_square?(5*(num**2)-4)
# end

# def is_perfect_square?(num)
#   num = BigDecimal.new(num)
#   num.sqrt(20) %1 == 0
# end

# 4. Refactored Solution
require 'bigdecimal'

def is_fibonacci?(num)
  is_perfect_square?(5*(num**2)+4) or is_perfect_square?(5*(num**2)-4)
end

def is_perfect_square?(num)
  BigDecimal.new(num).sqrt(20) % 1 == 0
end

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
# This challenge threw me for a loop -- I had some serious difficulties getting my functions to work with very large numbers. When Math.sqrt is called on very large numbers, the resulting square root is not necessarily an exact, to the decimal, accurate result. This made it very difficult for me to determine whether or not a very large number is a perfect square, which was essential to my solution. I figured out that I could utilize the Ruby class BigDecimal to help get the job done, although I'm still not 100% happy with my solution, because I had to settle for an accuracy of up to 20 decimal places when calculating the square root, instead of perfect accuracy. This probably means that with VERY VERY large numbers, my solution will not work properly. I'm definitely interested to see how other students tackled this problem. 