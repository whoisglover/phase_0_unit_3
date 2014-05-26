# U3.W8-9: Implement a Rectangle Class


# I worked on this challenge by myself.

# 2. Pseudocode

# write 4 methods;
# one should calculate the area of a Rectangle
# one should calculate the perimeter of a Rectangle
# one should calculate the diagonal of a Rectangle
# one should calculate if the Rectangle is a square


# 3. Initial Solution

# class Rectangle
#   attr_accessor :width, :height

#   def initialize(width, height)
#     @width  = width
#     @height = height
#   end

#   def area
#     width * height
#   end

#   def perimeter
#     (width * 2) + (height * 2)
#   end

#   def diagonal
#     Math.sqrt((width ** 2) + (height ** 2))
#   end

#   def square?
#     width == height
#       return true
#     else
#       false
#     end
#   end

#   # def ==(other)
#   #   (other.width  == self.width && other.height == self.height ) ||
#   #   (other.height == self.width && other.width  == self.height )
#   # end
# end



# 4. Refactored Solution

class Rectangle
  attr_accessor :width, :height

  def initialize(width, height)
    @width  = width
    @height = height
  end

  def area
    width * height
  end

  def perimeter
    (width * 2) + (height * 2)
  end

  def diagonal
    Math.sqrt((width ** 2) + (height ** 2))
  end

  def square?
    width == height ? true : false
  end
end



# 1. DRIVER TESTS GO BELOW THIS LINE

r1 = Rectangle.new(4, 6)
r2 = Rectangle.new(10, 12)
r3 = Rectangle.new(5,5)

p r1.area == 24
p r2.area == 120
p r3.area == 25

p r1.perimeter == 20
p r2.perimeter == 44
p r3.perimeter == 20

p r1.diagonal == 7.211102550927978
p r2.diagonal == 15.620499351813308
p r3.diagonal == 7.0710678118654755

p r1.square? == false
p r2.square? == false
p r3.square? == true


# 5. Reflection 

# This was good practice, but I didn't really learn anything new here 
# (excpect maybe how to use the Math class).