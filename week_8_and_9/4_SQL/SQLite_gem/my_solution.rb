# I worked on this challenge with Celeen Rusk

require 'sqlite3'


$db = SQLite3::Database.open "congress_poll_results.db"


def print_state_reps(*states)
	states.each do |state| state.upcase!
  puts "#{state} REPRESENTATIVES"
  state_reps = $db.execute("SELECT name FROM congress_members WHERE location = '#{state}'")
  state_reps.each { |rep| puts rep }
  print_separator
	end
end

def print_longest_serving_reps(minimum_years)  #sorry guys, oracle needs me, i didn't finish this!
  puts "LONGEST SERVING REPRESENTATIVES"
  reps_with_years = $db.execute("SELECT name, years_in_congress FROM congress_members WHERE years_in_congress > #{minimum_years}") 
  reps_with_years.each{|rep_with_year_arr| puts "#{rep_with_year_arr[0]} - #{rep_with_year_arr[1]} years"}
end

def print_lowest_grade_level_speakers(grade_current)
  puts "LOWEST GRADE LEVEL SPEAKERS (less than #{grade_current}th grade)"
  puts $db.execute("SELECT name FROM congress_members WHERE grade_current < #{grade_current}")
end

def print_separator
  puts 
  puts "------------------------------------------------------------------------------"
  puts 
end

def print_all_politicians_with_votes
	puts "ALL POLITICIANS WITH VOTES"
	all_politicians = $db.execute("SELECT name, COUNT(politician_id) FROM congress_members JOIN votes ON (congress_members.id = politician_id) GROUP BY congress_members.id")
	all_politicians.each{|politician| puts "#{politician[0]} - #{politician[1]} votes"}
end



print_state_reps("az")

print_separator

print_longest_serving_reps(35)
# TODO - Print out the number of years served as well as the name of the longest running reps
# output should look like:  Rep. C. W. Bill Young - 41 years

print_separator
print_lowest_grade_level_speakers(8)
# TODO - Need to be able to pass the grade level as an argument, look in schema for "grade_current" column

# TODO - Make a method to print the following states representatives as well:
# (New Jersey, New York, Maine, Florida, and Alaska)
print_separator
print_state_reps("nJ", "ny", "me", "fl", "ak")

##### BONUS #######
# TODO (bonus) - Stop SQL injection attacks!  Statmaster learned that interpolation of variables in SQL statements leaves some security vulnerabilities.  Use the google to figure out how to protect from this type of attack.

# TODO (bonus)
# Create a listing of all of the Politicians and the number of votes they recieved
# output should look like:  Sen. John McCain - 7,323 votes (This is an example, yours will not return this value, it should just 
#    have a similar format)
print_separator
print_all_politicians_with_votes


# Create a listing of each Politician and the voter that voted for them
# output should include the senators name, then a long list of voters separated by a comma
#
# * you'll need to do some join statements to complete these last queries!


# REFLECTION- Include your reflection as a comment below.
# How does the sqlite3 gem work?  What is the variable `$db` holding?  
# Try to use your knowledge of ruby and OO to decipher this as well as h
# ow the `#execute` method works.  Take a stab at explaining the line 
# `$db.execute("SELECT name FROM congress_members WHERE years_in_congress 
#   > #{minimum_years}")`.  Try to explain this as clearly as possible for 
# your fellow students.  
# If you're having trouble, find someone to pair on this explanation with you.

#The sqlite3 gem allows ruby to interface with SQL. In other words, you can create a ruby file, and include SQL code within it (using .execute). The $db variable is holding the database, which contains all three tables (congress_members, voters, and votes). It looks like the execute method works by treating everything typed within the parentheses as SQL code, and returns the resulting table (as an array, i believe). The particular statement $db.execute("SELECT name FROM congress_members WHERE years_in_congress > #{minimum_years}") is returning the table (as an array) with the congress members' names that have been in congress for a longer amount of time than the minimum years variable that was passed in.