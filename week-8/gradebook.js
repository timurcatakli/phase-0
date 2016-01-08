/*
Gradebook from Names and Scores

I worked on this challenge [by myself, with:]
This challenge took me [#] hours.

You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).

Do not alter the students and scores code.

*/

// var taxi = {
//     make: "Webville Motors",
//     model: "Taxi",
//     year: 1955,
//     color: "yellow",
//     passengers: 4,
//     convertible: false,
//     mileage: 281341,
//     started: false,
//     start: function() {
//       this.started = true;
//     },
//     stop: function() {
//       this.started = false;
//     },
//     drive: function {
//       // drive code here }
//     };

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]
//console.log(scores[2][1]);

// __________________________________________
// Write your code below.

// var gradebook = {
//   Joseph: { testScores: scores[0] },
//   Susan: {
//     testScores: scores[1]
//   },
//   William: {
//     testScores: scores[2]
//   },
//   Elizabeth: {
//     testScores: scores[3]
//   },
//   addScore: function(name,score) {scores[students.indexOf(name)].push(score);},
//   getAverage: function(name){
//     return average(scores[students.indexOf(name)])
//   }
// };

// function average(arrayIntegers){
//   var total = 0;
//   for(var i = 0; i < arrayIntegers.length; i++) {
//     total += arrayIntegers[i];
//   }
//   var avg = total / arrayIntegers.length;
//   return avg;
// };



// __________________________________________
// Refactored Solution

var gradebook = {
  Joseph: { testScores: scores[0] },
  Susan: { testScores: scores[1] },
  William: { testScores: scores[2] },
  Elizabeth: { testScores: scores[3] },
  addScore: function(name,score) {scores[students.indexOf(name)].push(score);},
  getAverage: function(name){ return average(scores[students.indexOf(name)]) }
};

function average(arrayIntegers){
  total = arrayIntegers.reduce(function(previousValue, currentValue) {return previousValue + currentValue;})
  return total / arrayIntegers.length;
};

// __________________________________________
// Reflect

// What did you learn about adding functions to objects?
// In the beginning we didn't use Return on getAverage function which didnt pass the test code. Then we figured out that Return is the solution.

// How did you iterate over nested arrays in JavaScript?
// By using reduce method.

// Were there any new methods you were able to incorporate? If so, what were they and how did they work?
// Reduce method.






// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)