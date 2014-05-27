# U3.W8-9: Implement a Rectangle Class


# I worked on this challenge with Andy Principe.

# 2. Pseudocode
  # 1. Define area method which returns the area of the rectangle
  # 2. Define perimeter method which returns the perimeter of a rectangle (or square)
  # 3. Define diagonal method which returns the diagonal length of the rectangle (or square)
  # 4. Define method square?, which returns true if the rectangle is a square (if width = height)

# 3. Initial Solution
# class Rectangle
#   attr_accessor :width, :height

#   def initialize(width, height)
#     @width  = width
#     @height = height
#   end

#   def ==(other)
#     (other.width  == self.width && other.height == self.height ) ||
#     (other.height == self.width && other.width  == self.height )
#   end

#   def area
#     @width * @height
#   end

#   def perimeter
#     2*@width + 2*@height
#   end

#   def diagonal
#     Math.sqrt(@width**2 + @height**2)
#   end

#   def square?
#     @width == @height
#   end
# end




# 4. Refactored Solution

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

  #Doesn't look like we needed the method above. Not sure why it was there to begin with?

  def area
    @width * @height
  end

  def perimeter
    2*@width + 2*@height
  end

  def diagonal
    Math.sqrt(@width**2 + @height**2)
  end

  def square?
    @width == @height
  end
end




# 1. DRIVER TESTS GO BELOW THIS LINE

def assert(message)
  raise message unless yield
end

rectangle = Rectangle.new(10,20)
square = Rectangle.new(20,20)

assert("Area method should be defined."){Rectangle.method_defined?(:area)}
assert("Area of rectangle should be 200"){rectangle.area == 200}
assert("Area of square should be 400"){square.area == 400}

assert("Perimeter method should be defined."){Rectangle.method_defined?(:perimeter)}
assert("Perimeter of rectangle should be 60"){rectangle.perimeter == 60}
assert("Perimeter of square should be 80"){square.perimeter == 80}

assert("Diagonal method should be defined."){Rectangle.method_defined?(:diagonal)}
assert("Diagonal of rectangle should be 22.360679774997898"){rectangle.diagonal == 22.360679774997898}
assert("Diagonal of square should be 28.284271247461902"){square.diagonal == 28.284271247461902}

assert("Square? method should be defined."){Rectangle.method_defined?(:square?)}
assert("Square? of rectangle should be false"){rectangle.square? == false}
assert("Square? of square should be true"){square.square?}



# 5. Reflection 
# This challenge proved to be fairly elementary. Andy and I solidified our knowledge of using assert statements, creating instance methods, and referring to instance variables within our methods. We also reserached the attr_accessor statement, and we were able to better understand its functionality and application.
