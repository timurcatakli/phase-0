"use strict";
function largestOfFour(arr) {
	var bigNumbers = new Array;
	arr.forEach(function(item, index) {bigNumbers.push(Math.max.apply(undefined, item))}
	);
	
	return console.log(bigNumbers);
}

largestOfFour([
	[4, 5, 1, 3],
	[13, 27, 18, 26],
	[32, 35, 37, 39],
	[1000, 1001, 857, 1]
]);

// var arr = [1, 2, 5, 3];
// console.log(Math.max.apply(undefined, arr));