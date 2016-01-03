"use strict";
// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode
// CONVERT integer to string
// ITERATE starting from the last character of the string
// IF the character is an order of 3
// 	THEN insert comma
// RETURN updated string

// Initial Solution
// String.prototype.insertAt = function(index, string) {
// 	return this.substr(0, index) + string + this.substr(index);
// }

// function separateComma(number) {
// 	var myString = String(number);
// 	var j = 1

// 	for (var i = myString.length - 1; i >= 0; i--) {
// 		if (j % 3 === 0 && i !== 0) {
// 			myString = myString.insertAt(i, ',');
// 		};
// 		j++
// 	}
// 	return myString;
// }

// Refactored Solution

String.prototype.insertAt = function(index, string) {
	return this.substr(0, index) + string + this.substr(index);
};

function separateComma(number) {
	"use strict";
	var myString = String(number);
	var j = 1;

	for (var i = myString.length - 1; i >= 0; i--) {
		if (j % 3 === 0 && i !== 0) {
			myString = myString.insertAt(i, ',');
		}
		j++;
	}
	return myString;
}


// Your Own Tests (OPTIONAL)
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
	(separateComma(1234) === "1,234"),
	"Function should take '1234' and return '1,234'.",
	"1. "
)

assert(
	(separateComma(12345) === "12,345"),
	"Function should take '12345' and return '12,345'.",
	"2. "
)

assert(
	(separateComma(123456) === "123,456"),
	"Function should take '123456' and return '123,456'.",
	"3. "
)

assert(
	(separateComma(1234567) === "1,234,567"),
	"Function should take '1234567' and return '1,234,567'.",
	"4. "
)

assert(
	(separateComma(12345678) === "12,345,678"),
	"Function should take '12345678' and return '12,345,678'.",
	"5. "
)



// Reflection
// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
// Actually no. the algorithm is the same and it can be applied with any programming language...

// What did you learn about iterating over arrays in JavaScript?
// I used FOR loop in order to iterate.

// What was different about solving this problem in JavaScript?
// I am sorry but it looked very similar to Ruby version

// What built-in methods did you find to incorporate in your refactored solution?
// String(number) - .substr()