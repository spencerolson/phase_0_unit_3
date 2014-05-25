# U3.W8-9: 


# I worked on this challenge by myself.

# 2. Pseudocode
	# 1. iterate through the array using .map
	# 2. if the current value is divisble by 15, replace it with "FizzBuzz". If it's divisble by 5, replace it with "Buzz". If it's divisible by 3, replace it with "Fizz". Make sure to check 15 before 5 and 3, so since something divisible by 15 would also be divisible by 5 and 3, but we'd want to change it to "FizzBuzz", not "Fizz" or "Buzz".
	# 3. return the final array


# 3. Initial Solution

# def super_fizzbuzz(array)
# 	array.map! do |num|
# 		if num % 15 == 0
# 			"FizzBuzz"
# 		elsif num % 5 == 0
# 			"Buzz"
# 		elsif num % 3 == 0
# 			"Fizz"
# 		else
# 			num
# 		end
# 	end
# end



# 4. Refactored Solution

def super_fizzbuzz(array)
	array.map do |num| #got rid of the ! that I had in the original solution. There's no need to alter the underlying array here.
		if num % 15 == 0
			"FizzBuzz"
		elsif num % 5 == 0
			"Buzz"
		elsif num % 3 == 0
			"Fizz"
		else
			num
		end
	end
end




# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

def assert
	raise "Assert failed!" unless yield
end

def random_input_array(base, size)
  (1..size).map { |i| base**(1+rand(15)) }
end

assert{super_fizzbuzz(random_input_array(3,100))== ["Fizz"]*100}
assert{super_fizzbuzz(random_input_array(5,100))==["Buzz"]*100}
assert{super_fizzbuzz(random_input_array(15, 100))== ["FizzBuzz"]*100}
assert{super_fizzbuzz([1,2,3])== [1,2,'Fizz']}
assert{super_fizzbuzz([15, 5, 3, 1])== ['FizzBuzz', 'Buzz', 'Fizz', 1]}
# 5. Reflection 
# I found this challenge to be pretty straightforward. There were 2 things that helped me solve this challenge: 1) knowing that I should check the '15' case before the '5' and '3' cases, and 2) using Enumerable's .map method to iterate through the array. By using .map, it's easy to replace values in the array, and then once done iterating, .map returns the resulting array, which is perfect for this scenario. When refactoring i got rid of the bang(!) in my initial solution, since there was no need to change the underlying array.