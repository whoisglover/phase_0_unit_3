# U3.W8-9: Reverse Words


# I worked on this challenge by myself.

# 2. Pseudocode



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






# 5. Reflection 