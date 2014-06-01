# U3.W8-9: Implement a Rectangle Class


# Pairing Session Danny Glover, Andrew Koines Jr

# 2. Pseudocode
# Create method to find area by multiplying width times height
#  Create method to perimeter  by adding two times width and  two times height
#  Create method to find diagonal by pythagorean theorem c = sqrt(a^2 + b^2)
# Check if square by comparing width and height, if equal then yes square  



# 3. Initial Solution
class Rectangle
  attr_accessor :width, :height

  def initialize(width, height)
    @width  = width
    @height = height
  end

  # def ==(other)
  #   (other.width  == self.width && other.height == self.height ) ||
  #   (other.height == self.width && other.width  == self.height )
  # end
  
  def area
    @width*@height
  end
  
  def perimeter
      (2*@width) + (2*@height) 
  end
  
  def diagonal
      Math.sqrt((@width**2) + (@height**2)).to_f
  end
  
  def square?
      @height == @width
  end
  
end


# 4. Refactored Solution
# We didnt' feel this code needed any refactoring.  The code is very DRY and all the methods are as simple as they 
# could be.  



# 1. DRIVER TESTS GO BELOW THIS LINE

rectangle1 = Rectangle.new(10,12)
rectangle2 = Rectangle.new(12,12)
rectangle3 = Rectangle.new(3,4)

p rectangle1.area == 120
p rectangle2.square? == true
p rectangle3.diagonal == 5
p rectangle1.perimeter == 44


# 5. Reflection 
# Very good pairing session with Andrew.  We breezed through this challenge and really didnt have any questions.  I am feeling
# pretty good about Ruby at this point.  I feel confident with all the Learning Competencies thus far.