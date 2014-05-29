// U3.W8-9: Challenge you're converting


// I worked on this challenge with Andy Principe

// Original Ruby code:
// class Rectangle
//   attr_accessor :width, :height

//   def initialize(width, height)
//     @width  = width
//     @height = height
//   end

//   def area
//   	@width * @height
//   end

//   def perimeter
//   	2*@width + 2*@height
//   end

//   def diagonal
//   	Math.sqrt(@width**2 + @height**2)
//   end

//   def square?
//   	@width == @height
//   end
// end

// 2. Pseudocode
// add width property
// add height property
// define area method, which returns area of rectangle
// define permiter method, which returns perimeter of rectangle/square
// define diagonal method, which returns diagonal length
// define square? method, which returns true if rectangle is a square

// 3. Initial Solution

// var rectangle = {
// 	width: 10,
// 	height: 20,
// 	area: function(){
// 		return rectangle.width * rectangle.height
// 	},
// 	perimeter: function(){
// 		return 2 * rectangle.width + 2 * rectangle.height
// 	},
// 	diagonal: function(){
// 		return Math.sqrt(Math.pow(rectangle.width,2) + Math.pow(rectangle.height,2))
// 	},
// 	is_square: function(){
// 		return rectangle.width === rectangle.height
// 	}
// };

// var square = {
// 	width: 20,
// 	height: 20,
// 	area: function(){
// 		return square.width * square.height
// 	},
// 	perimeter: function(){
// 		return 2 * square.width + 2 * square.height
// 	},
// 	diagonal: function(){
// 		return Math.sqrt(Math.pow(square.width,2) + Math.pow(square.height,2))
// 	},
// 	is_square: function(){
// 		return square.width === square.height
// 	}
// };

// 4. Refactored Solution


function Rectangle(width,height) {
	this.width = width;
	this.height = height;
	this.area = function(){
		return this.width * this.height
	};
	this.perimeter = function(){
		return 2 * this.width + 2 * this.height
	};
	this.diagonal = function(){
		return Math.sqrt(Math.pow(this.width,2) + Math.pow(this.height,2))
	};
	this.is_square = function(){
		return this.width === this.height
	}
};

var rectangle = new Rectangle(10,20);
var square = new Rectangle(20,20);


// 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE
function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (rectangle instanceof Object),
  "The value of rectangle should be an Object.",
  "1. "
)

assert(
  (rectangle.width === 10),
  "The value of rectangle width should equal 10",
  "2. "
)

assert(
  (rectangle.height === 20),
  "The value of rectangle height should equal 20",
  "3. "
)

assert(
  (square instanceof Object),
  "The value of square should be an Object.",
  "4. "
)

assert(
  (square.width === 20),
  "The value of square width should equal 20",
  "5. "
)

assert(
  (square.height === 20),
  "The value of square height should equal 20",
  "6. "
)

assert(
  (rectangle.area() === 200),
  "The value of rectangle area should equal 200",
  "7. "
)

assert(
  (rectangle.perimeter() === 60),
  "The value of rectangle perimeter should equal 60",
  "8. "
)

assert(
  (rectangle.diagonal() === 22.360679774997898),
  "The value of rectangle diagonal should equal 22.360679774997898",
  "9. "
)

assert(
  (rectangle.is_square() === false),
  "The value of rectangle square? should be false",
  "10. "
)

assert(
  (square.area() === 400),
  "The value of square area should equal 400",
  "11. "
)

assert(
  (square.perimeter() === 80),
  "The value of square perimeter should equal 80",
  "12. "
)

assert(
  (square.diagonal() === 28.284271247461902),
  "The value of square diagonal should equal 28.284271247461902",
  "13. "
)

assert(
  (square.is_square() === true),
  "The value of square square? should be false",
  "14. "
)


// 5. Reflection 
// This challenge was helpful in seeing the similarites and differences between JavaScript and Ruby. Although there were different syntactic obstacles to overcome, we were able to efficiently recreate our code as JS. In the initial solution, we created 2 separate objects, with basically the same code. We Refactored to make our code more DRY by creating a function and passing in width and height to more easily create the separate objects. 