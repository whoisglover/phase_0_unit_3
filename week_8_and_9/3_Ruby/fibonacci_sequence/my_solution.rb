# U3.W8-9: 


# I worked on this challenge with: Catherine Vongsathorn.

# 2. Pseudocode

# 1. define a method called is_fibonacci? that takes one argument
# 2. assign n = 1 and m = 1
# 3. until m >= argument calculate terms in the fibinacci sequence
# 4. we want n to become m, and at the same time for  m = m+n
# 5. end our until loop
# 6. return true or false depending on if it's a fib number or not


# 3. Initial Solution


def is_fibonacci?(num)
    n, m = 1, 1
    if num < 1
        return false
    else
        until m >= num
            n, m = m, n + m
        end
        return m == num
    end
end
    



# 4. Refactored Solution

# We thought our code was pretty concise for using a looping method, 
# as opposed to using recursion. There's not really a way that we can 
# see too simply even further. 




# 1. DRIVER TESTS GO BELOW THIS LINE

p is_fibonacci?(5) == true
p is_fibonacci?(1000) == false
p is_fibonacci?(8670007398507948658051921) == true
p is_fibonacci?(927372692193078999171) == false
p is_fibonacci?(10946) == true
p is_fibonacci?(0) == false
p is_fibonacci?(-923478347) == false





# 5. Reflection 

# This was a fairly easy challenge, code-wise. I implemented it differently before,
# but working with Catherine was great because we constructed a method that was way
# simpler than what I'd done before. I don't usually use the until loop, but I think
# it works for this particular challenge. I'm very interested in being able to 
# discern when to use what; meaning, when to use an iterator vs. a loop vs. black magic.