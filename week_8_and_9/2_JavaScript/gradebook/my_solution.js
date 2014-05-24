/*
U3.W8-9: Gradebook from Names and Scores

You will work with the following two variables.  The first, students, holds the names of four students.  
The second, scores, holds groups of test scores.  The relative positions of elements within the two 
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).

Do not alter the students and scores code.

I worked on this challenge by myself.

*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]






// __________________________________________
// Write your code below.

// var average = function(arr){
//   var sum=0
//   for(var i = 0; i < arr.length; i++){
//     sum += arr[i];
//   }
//   return sum/arr.length
// }


// var gradebook = {
//   Joseph: {testScores: scores[0]},
//   Susan: {testScores: scores[1]},
//   William: {testScores: scores[2]},
//   Elizabeth: {testScores: scores[3]},
//   addScore: function(name, score){
//     gradebook[name].testScores.push(score);
//   },
//   getAverage: function(name){
//     return average(gradebook[name].testScores);
//   }
// }

// __________________________________________
// Refactored Solution

var average = function(arr){
  sum = 0;
  for(var i = 0; i < arr.length; i++){
    sum += arr[i];
  }
  return sum/arr.length
}


var gradebook = {
  addScore: function(name, score){
    gradebook[name].testScores.push(score);
  },
  getAverage: function(name){
    return average(gradebook[name].testScores);
  }
}

for (var i = 0; i < students.length; i++) {
  gradebook[students[i]] = {testScores: scores[i]}; //refactored my original code so that the students array is being utilized. Before, I had hard-coded the names as properties into the gradebook Object -- bad idea. Now, for each name in the students array, this for loop will run and will add a property with the student's name.
};

// __________________________________________
// Reflect
// This was my first time using JavaScript since the Unit 1 Week 3 assignments. I was a little rusty on my syntax, to say the least. I think the biggest 'aha' moment I had during this exercise was when I compared my original solution with the students and scores arrays that were provided. I thought to myself, 'What is wrong with my code? I never once reference the students array that was created'. I took a look at my code, and realized I had hard-coded the student names as properties into my gradebook variable. This is bad news if we decide to later add other names to the students array, since the gradebook variable won't dynamically change to add the new students as properties. To fix this issue, I removed the hard-coded student name properties, and instead created a for loop that goes through each name in the students array, and creates a property in the gradebook variable with that student name. Problem solved! 








// __________________________________________
// Driver Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "1. "
)

assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "2. "
)

assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "3. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "4. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "5. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "6. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "7. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Jospeh'.",
  "9. "
)