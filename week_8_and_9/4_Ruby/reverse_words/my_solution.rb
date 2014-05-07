# U3.W8-9: Reverse Words


# I worked on this challenge by myself.

# 2. Pseudocode
# create a method called reverse_words
# method takes one argument (a string)
# split the string into an array
# map out a new array of reverse_words
# join the new array on white spaces (' ')



# 3. Initial Solution


# def reverse_words(str)
#   new_string = str.split.map { |word| word.reverse } 
#   new_string.join(' ')
# end

# 4. Refactored Solution


def reverse_words(str)
  str.split.map(&:reverse).join(' ')
end


# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

p reverse_words("Hello, my name is Lana") == ",olleH ym eman si anaL"
p reverse_words("I love cats") == "I evol stac"
p reverse_words("My cat is 7 years old.") == "yM tac si 7 sraey .dlo"


# 5. Reflection 

# Since I finished this exercise a while ago, the only thing I really altered was the new
# &:blank syntax that I learned about (the to_proc). Otherwise, not too difficult. 