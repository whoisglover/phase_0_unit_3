# U3.W8-9: 


# I worked on this challenge by myself.

# 2. Pseudocode

# 1. create method super_fizzbuzz with a single argument (which should be an array)
# 2. map across the array checking if each element is divisible by 15, 5, and 3
# 3. if number is divisible by 15, replace it with "FizzBuzz"
# 4. if number is divisible by 5, replace it with "Buzz"
# 5. if number is divisible by 3, replace it with "Fizz"
# 6. put all that in an if statement



# 3. Initial Solution

def super_fizzbuzz(array)
  array.map do |x|
    if x % 15 == 0
      "FizzBuzz"
    elsif x % 5 == 0
      "Buzz"
    elsif x % 3 == 0
      "Fizz"
    else
      x
    end
  end
end



# 4. Refactored Solution

# I'm honestly not sure how to make this any simpler. 




# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

array1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
array2 = [5, 10, 15, 20, 25, 30, 35, 40]
array3 = [45, 10, 17, 3, 9, 50, 11, 18, 12, 0]

p super_fizzbuzz(array1) == [1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz", "Buzz"]
p super_fizzbuzz(array2) == ["Buzz", "Buzz", "FizzBuzz", "Buzz", "Buzz", "FizzBuzz", "Buzz", "Buzz"]
p super_fizzbuzz(array3) == ["FizzBuzz", "Buzz", 17, "Fizz", "Fizz", "Buzz", 11, "Fizz", "Fizz", "FizzBuzz"]






# 5. Reflection 

# I had solved this problem a while ago, but it wasn't nearly as concise (I lost
# the original code though). I figured out that the order matters when implementing
# this if statement; if I had put 3, then 5, then 15, it wouldn't have returned the 
# desired results. I'm not sure this is the best way to structure it; meaning, if 
# the order matters, is this the best way to code it, or am I just using some sort of
# trick? Shouldn't the order not matter in this situation? Or maybe it should, and
# I'm just doubting myself for no reason. I can't wait for some discussion on such topics!