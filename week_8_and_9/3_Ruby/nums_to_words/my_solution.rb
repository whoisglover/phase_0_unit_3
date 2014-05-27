# U3.W8-9: Numbers to English Words


# Ruby Pairing 5/26
#


# 2. Pseudocode
# 1. Create hashes for hundreds place, tens place, ones place, and the teens.  Key is the digit and value is the english string
# 2. Take the input and convert it to a string, then split the string
# 3. Take the length of the input to determine which hash to start with, if it starts
# with hundreds push the value of the hash using the hundreds to a variable named output
# 4. If the input length is equal to or greater than 2 check to see if the second to last digit is 1,
#    take the value in the teens hash of the final digit and push it to the output and return.  If second to last digit is not 1,
#    take the value from the tens hash and push that to output.
# 5. If the input length is equal to greater than one, then push the value from the ones hash with the digit as the key to output
# 6. Return output


# 3. Initial Solution
$hundreds = {
    "1" => "one hundred" }

$tens = {
    "0" => "",
    "2" => "twenty",
    "3" => "thirty",
    "4" => "fourty",
    "5" => "fifty",
    "6" => "sixty",
    "7" => "seventy",
    "8" => "eighty",
    "9" => "ninety" }

$teens = {
    "9" => "nineteen",
    "8" => "eighteen",
    "7" => "seventeen",
    "6" => "sixteen",
    "5" => "fifteen",
    "4" => "fourteen",
    "3" => "thirteen",
    "2" => "twelve",
    "1" => "eleven",
    "0" => "ten"
    
    }
    
$ones = {
    "0" => "",
    "1" => "one",
    "2" => "two",
    "3" => "three",
    "4" => "four",
    "5" => "five",
    "6" => "six",
    "7" => "seven",
    "8" => "eight",
    "9" => "nine" }
    
def in_words(num)
    input = num.to_s.split("")
    output = Array.new
    if input.length > 2
        output.push($hundreds[input[input.length - 3]])
        output.push(" ") unless input[input.length - 2] == "0" && input[input.length - 1] == "0"
    end
    if input.length > 1
        if input[input.length - 2] == "1"
            output.push($teens[input[input.length - 1]])
            return output.join
        end
        output.push($tens[input[input.length - 2]])
        output.push(" ") unless input[input.length - 1] == "0"
    end
    if input.length > 0
        output.push($ones[input[input.length - 1]])
    end
    
    output.push("zero") if input.length == 1 && input[0] == "0"
    return output.join
end

# 4. Refactored Solution

$hundreds = {
    "1" => "one hundred" }

$tens = {
    "0" => "",
    "2" => "twenty",
    "3" => "thirty",
    "4" => "fourty",
    "5" => "fifty",
    "6" => "sixty",
    "7" => "seventy",
    "8" => "eighty",
    "9" => "ninety" }

$teens = {
    "9" => "nineteen",
    "8" => "eighteen",
    "7" => "seventeen",
    "6" => "sixteen",
    "5" => "fifteen",
    "4" => "fourteen",
    "3" => "thirteen",
    "2" => "twelve",
    "1" => "eleven",
    "0" => "ten"
    
    }
    
$ones = {
    "0" => "",
    "1" => "one",
    "2" => "two",
    "3" => "three",
    "4" => "four",
    "5" => "five",
    "6" => "six",
    "7" => "seven",
    "8" => "eight",
    "9" => "nine" }
    
def in_words(num)
    input = num.to_s.split("")
    output = Array.new
    length = input.length
    
    if length > 2
        output.push($hundreds[input[length - 3]])
        output.push(" ") unless input[length - 2] == "0" && input[length - 1] == "0"
    end
    
    if length > 1
        if input[length - 2] == "1"
            output.push($teens[input[length - 1]])
            return output.join
        end
        output.push($tens[input[length - 2]])
        output.push(" ") unless input[length - 1] == "0"
    end
    
    if input.length > 0
        output.push($ones[input[length - 1]])
    end
    
    output.push("zero") if length == 1 && input[0] == "0"
    return output.join
end


# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

puts in_words(4) == "four" 
puts in_words(17) == "seventeen"
puts in_words(27) == "twenty seven"  
puts in_words(92) == "ninety two" 
puts in_words(100) == "one hundred"
puts in_words(20) == "twenty"
puts in_words(0) == "zero"




# 5. Reflection 
=begin
This code is a result of a very successful pairing session with Kirstin Jarchow.  We spent a good amount of time 
talking through the challenge and how we thought we should go about it.  Then we moved to pseduocode and again were 
very detailed.  Taking this time at the start really helped us move quickly and effectively when coding.  We also wrote
a few driver tests before we did anything in an effort to get used to test driven development.  Kirstin had some great ideas
with using the input length and I liked her style of coding.  After refactoring we have a very concise, DRY solution that
passes all the tests we provide it and fully satisfies the challenge objectives.
=end