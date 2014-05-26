
# U3.W8-9: OO Basics: Student


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode
=begin
1. Set scores attr equal to the argument that is passed in to student class
2. Create Average method, iterating thru the scores and adding them up, then divide by the total amount of scores
3. Create letter grade method, call the average method and then find out which letter grade that average corresponds to (switch case)
4. Create linear search method, iterate thru array of students and do a check on the name.  If check is true return the index.  After the looping is done if code hasnt returned then the name wasnt found and you should return -1 
=end


# 3. Initial Solution

class Student
  attr_accessor :scores, :first_name

  def initialize(args)
  	@scores = args
    #Use named arguments!
    #your code here
  end

  def average
  	total =0
  	average = 0
  	@scores.each do |x|
  		total += x
  	end
  	average = total/@scores.length
  	return average
  end

  def letter_grade
  	average = self.average
  	case average
   	when 90..100
   		return 'A'
   	when 80..89
   		return 'B'
   	when 70..79
   		return 'C'
   	when 60..69
   		return 'D'
   	else 
   		return 'F'
  	end
  end

end

def linear_search(students, name)
	students.each_with_index{ |item, index|
		if item.first_name == name
			return index
		end
	}
	return -1
end

# 4. Refactored Solution

# I refactored to make some variable names more clear.  I also added the name as an argument to initialize a new object.
class Student
  attr_accessor :scores, :first_name

  def initialize(name, scores_array)
  	@first_name = name
  	@scores = scores_array
    #Use named arguments!
    #your code here
  end

  def average
  	total =0
  	average = 0
  	@scores.each do |x|
  		total += x
  	end
  	average = total/@scores.length
  	return average
  end

  def letter_grade
  	total_grade = self.average
  	case total_grade
   	when 90..100
   		return 'A'
   	when 80..89
   		return 'B'
   	when 70..79
   		return 'C'
   	when 60..69
   		return 'D'
   	else 
   		return 'F'
  	end
  end

end

def linear_search(students, name)
	students.each_with_index{ |item, index|
		if item.first_name == name
			return index
		end
	}
	return -1
end



# 1. DRIVER TESTS GO BELOW THIS LINE
def average_assert 
	raise "Average is not correct!" unless yield
end

def name_assert
	raise "Name is not correct!" unless yield
end

def grade_assert
	raise "Letter grade is not correct!" unless yield
end

# Tests for release 0:
students = []
students[0] = Student.new("Alex", [100,100,100,0,100])
# students[0].first_name = "Alex"
name_assert{p students[0].first_name == "Alex"}
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# Tests for release 1:



average_assert{p students[0].average == 80}
grade_assert{p students[0].letter_grade == 'B'}

# Tests for release 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1





# 5. Reflection 
=begin
This challenge seemed difficult at first glance.  Working thru the pseudocode step by step made it very manageable.
I needed a refresher on attr_accessor's but ruby docs did the trick.  I really enjoyed hacking out each of the instance
methods.  I wasn't very confident going in to the challenge but now coming out on the other side I feel pretty good about all the
concepts that were presented here.  I think my code is very DRY and readable.  Thats all for now!
=end