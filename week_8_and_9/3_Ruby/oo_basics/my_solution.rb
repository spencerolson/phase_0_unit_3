# U3.W8-9: OO Basics: Student


# I worked on this challenge Joey Rosztoczy

# 2. Pseudocode



# 3. Initial Solution

# class Student
#   attr_accessor :scores, :first_name, :average, :letter_grade

#   def initialize(first_name, scores)   #Use named arguments! 
#   	@first_name = first_name 
#    	@scores = scores
#    	@average = @scores.inject(:+) / @scores.length
#    	@letter_grade = 

#    	case @average
#    	when 90...100
#    		@letter_grade = "A"
#    	when 80..90
#    		@letter_grade = "B"
#    	when 70..80
#    		@letter_grade = "C"
#    	when 60..70
#    		@letter_grade = "D"
#    	when 0..60
# 			@letter_grade = "F"   		
#    	end

#   end

# end

# def linear_search(students_array, first_name_search)
# 	students_array.each_with_index{ |student, index| return index if student.first_name == first_name_search}
# 	return -1
# end

# alex = Student.new("Alex", [100, 100, 100, 0, 100] )
# fred = Student.new("Fred", [100, 90, 60, 0, 10] )
# michelle = Student.new("Michelle", [100, 100, 100, 0, 100] )
# josh = Student.new("Josh", [90, 80, 100, 0, 100] )
# bob = Student.new("Bob", [60, 100, 100, 0, 70] )
# students = [alex, fred, michelle, josh, bob]



# 4. Refactored Solution
class Student
  attr_accessor :scores, :first_name, :average, :letter_grade

  def initialize(first_name, scores)   #Use named arguments! 
  	@first_name = first_name 
   	@scores = scores
   	@average = @scores.inject(:+) / @scores.length
   	@letter_grade = 

   	case @average
   	when 90...100
   		@letter_grade = "A"
   	when 80..90
   		@letter_grade = "B"
   	when 70..80
   		@letter_grade = "C"
   	when 60..70
   		@letter_grade = "D"
   	when 0..60
			@letter_grade = "F"   		
   	end

  end

end

def linear_search(students_array, first_name_search)
	students_array.each_with_index{ |student, index| return index if student.first_name == first_name_search}
	return -1
end

alex = Student.new("Alex", [100, 100, 100, 0, 100] )
fred = Student.new("Fred", [100, 90, 60, 0, 10] )
michelle = Student.new("Michelle", [100, 100, 100, 0, 100] )
josh = Student.new("Josh", [90, 80, 100, 0, 100] )
bob = Student.new("Bob", [60, 100, 100, 0, 70] )

students = [alex, fred, michelle, josh, bob]



# 1. DRIVER TESTS GO BELOW THIS LINE
# Tests for release 0:

def assert(message)
	raise ArgumentError, message unless yield
end

assert("Firstname not Alex"){students[0].first_name == "Alex"}
assert("Scores length not 5"){students[0].scores.length == 5}
assert("Error in score matching "){students[0].scores[0] == students[0].scores[4]}
assert("Scores not matching"){students[0].scores[3] == 0}


# Tests for release 1:
assert("Wrong Average") {students[0].average == 80}
assert("Wrong Letter Grade") {students[0].letter_grade == 'B'}


# Tests for release 2:

assert("Wrong index for Alex") {linear_search(students, "Alex") == 0}
assert("Does not return -1 for a student that doesn't exist") {linear_search(students, "NOT A STUDENT") == -1}





# 5. Reflection 