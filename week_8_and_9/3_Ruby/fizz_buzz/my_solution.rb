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

# I had solved this problem a while ago, but it wasn't nearly as concise (I lost
# the original code though). I figured out that the order matters when implementing
# this if statement; if I had put 3, then 5, then 15, it wouldn't have returned the 
# desired results. I'm not sure this is the best way to structure it; meaning, if 
# the order matters, is this the best way to code it, or am I just using some sort of
# trick? Shouldn't the order not matter in this situation? Or maybe it should, and
# I'm just doubting myself for no reason. I can't wait for some discussion on such topics!