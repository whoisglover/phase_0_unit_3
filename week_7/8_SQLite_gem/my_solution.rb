# U3.W7: BONUS Using the SQLite Gem

# I worked on this challenge by myself.

require 'sqlite3'


$db = SQLite3::Database.open "congress_poll_results.db"


def print_arizona_reps
  puts "AZ REPRESENTATIVES"
  az_reps = $db.execute("SELECT name FROM congress_members WHERE location = 'AZ'")
  az_reps.each { |rep| puts rep }
end

def print_longest_serving_reps(minimum_years)  
  puts "LONGEST SERVING REPRESENTATIVES"
  reps = $db.execute("SELECT name, years_in_congress FROM congress_members WHERE years_in_congress > #{minimum_years}")
  reps.each { |rep, years| puts "#{rep} - #{years} years" }
end

def print_lowest_grade_level_speakers(grade_level)
  puts "LOWEST GRADE LEVEL SPEAKERS (less than < 8th grade)"
  reps = $db.execute("SELECT name, grade_current FROM congress_members WHERE grade_current < #{grade_level}")
  reps.each { |rep, grade| puts "#{rep}, #{grade}" }
end

def print_separator
  puts 
  puts "------------------------------------------------------------------------------"
  puts 
end

def print_reps(state)
  puts "#{state.upcase} REPRESENTATIVES"	
  reps = $db.execute("SELECT name FROM congress_members WHERE location = '#{state}' ")
  reps.each { |rep| puts rep }
end




print_arizona_reps
print_separator

print_reps('NJ')
print_separator

print_reps('NY')
print_separator

print_reps('ME')
print_separator

print_reps('FL')
print_separator

print_reps('AK')
print_separator

print_longest_serving_reps(35)
print_separator

print_lowest_grade_level_speakers(8) 
# TODO - Need to be able to pass the grade level as an argument, look in schema for "grade_current" column

# TODO - Make a method to print the following states representatives as well:
# (New Jersey, New York, Maine, Florida, and Alaska)


##### BONUS #######
# TODO (bonus) - Stop SQL injection attacks!  Statmaster learned that interpolation of variables in SQL statements leaves some security vulnerabilities.  Use the google to figure out how to protect from this type of attack.

# TODO (bonus)
# Create a listing of all of the Politicians and the number of votes they recieved
# output should look like:  Sen. John McCain - 7,323 votes (This is an example, yours will not return this value, it should just 
#    have a similar format)
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