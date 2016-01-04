// Fibonacci Sequence - Enter a number and have the program generate the Fibonacci sequence to that number or to the Nth number.

// The Fibonacci Sequence is the series of numbers: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, ... The next number is found by adding up the two numbers before it. The 2 is found by adding the two numbers before it (1+1)




function fibonacci(num) {
	var arr = [0, 1];
	for (var i = 0; i <= num; i++) {
		arr.push(arr[(arr.length - 1)] + arr[(arr.length - 2)]);
	};
	return String(arr);

}
//console.log(fibonacci(2));

function diff(arr1, arr2) {
	var newArr = [];
	// Same, same; but different.
	if (arr1.length < arr2.length) {
		for (var i = 0; i <= arr1.length; i++) {
			console.log(i);
		}	
	}



	return newArr;
}

diff([1, 2, 3, 5], [1, 2, 3, 4, 5]);