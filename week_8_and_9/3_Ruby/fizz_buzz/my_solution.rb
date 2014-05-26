# U3.W8-9: 


# I worked on this challenge by myself.

# 2. Pseudocode

#define new method super_bizzbuzz - it will accept an array of ints
# loop thru array and check each number for divisibilty wiht 15, 5, and 3 in that order
# if it is divisible by one of these three then replace with the apporpirate word
# if it is not leave it alone



# 3. Initial Solution

def super_fizzbuzz(input_array)
  input_array.map do |input_num|
    if input_num % 15 == 0
      "FizzBuzz"
    elsif input_num % 5 == 0
      "Buzz"
    elsif input_num % 3 == 0
      "Fizz"
    else
      input_num
    end
  end
end


# 4. Refactored Solution

# Refactored from map to map!  This modifys the array in place and thus takes up more temp memory (not sure if its enough to care)
def super_fizzbuzz(input_array)
  input_array.map! do |input_num|
    if input_num % 15 == 0
      "FizzBuzz"
    elsif input_num % 5 == 0
      "Buzz"
    elsif input_num % 3 == 0
      "Fizz"
    else
      input_num
    end
  end
end



# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

array1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
array2 = [5, 10, 15, 20, 25, 30, 35, 40]
array3 = [45, 10, 17, 3, 9, 50, 11, 18, 12, 0]
p array1
p super_fizzbuzz(array1) == [1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz", "Buzz"]
p array1
p array2
p super_fizzbuzz(array2) == ["Buzz", "Buzz", "FizzBuzz", "Buzz", "Buzz", "FizzBuzz", "Buzz", "Buzz"]
p array2
p array3
p super_fizzbuzz(array3) == ["FizzBuzz", "Buzz", 17, "Fizz", "Fizz", "Buzz", 11, "Fizz", "Fizz", "FizzBuzz"]
p array3 





# 5. Reflection 
=begin
What parts of your strategy worked? What problems did you face?
-Looping thru the array worked well and the #map method was the best choice for modifying the numbers to words.
What questions did you have while coding? What resources did you find to help you answer them?
-I didn't have any questions while coding on this, but the #map method is slightly new to me.  This challenge made me feel more comfortable with using it.
What concepts are you having trouble with, or did you just figure something out? If so, what?
-I'm not having trouble with any of the concepts, but still really enjoying ruby's awesomeness!
Did you learn any new skills or tricks?
-I didn't learn anything totally new but like I mentioned before I feel much bettter about the #map and #map! methods now.
How confident are you with each of the Learning Competencies?
- I feel very confident with the learning competencies.
Which parts of the challenge did you enjoy?
- I enjoyed the logic required to make it work right, ordering was important here.
Which parts of the challenge did you find tedious?
- I didn't find any parts of the challenge tedious.
=end