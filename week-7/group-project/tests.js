function sum(arr, even_or_odd) {
  if (even_or_odd == "even") {
    for (count = 0; count < 6; count++) {
      if (arr[count] % 2 == 0) {
        arr.splice(count, 1);
      }
    }
    var sum = arr.reduce(add, 0);
    console.log(sum);
  }
  else if (even_or_odd == "odd") {
    for (var count = 0; count < arr.length; count++) {
      if (arr[count] % 2 == 1) {
        arr.splice(count, 1);
      }
    }
    var sum = arr.reduce(add, 0);
    console.log(sum);
  }
  else {
    console.log("Nothing");
  }
}

// Refactor

// function sum(numbers) {
//   var totalSum = 0;
//   for (var i = 0; i < numbers.length;i++) {
//     totalSum += numbers[i]
//   }
//   return totalSum;
//   }

function mean(arr, even_or_odd) {
  if (even_or_odd == "even") {
    for (count = 0; count < 6; count++) {
      if (arr[count] % 2 == 0) {
        arr.splice(count, 1);
      }
    }
    var sum = arr.reduce(add, 0);
    console.log(sum / arr.length);
  }
  else if (even_or_odd == "odd") {
    for (var count = 0; count < arr.length; count++) {
      if (arr[count] % 2 == 1) {
        arr.splice(count, 1);
      }
    }
    var sum = arr.reduce(add, 0);
    console.log(sum / arr.length);
  }
  else {
    console.log("Nothing");
  }
}

// Refactor

// function mean(numbers) {
//   var mean = 0
//   for (i = 0; i < numbers.length; i++){
//     mean += numbers[i]
//   }
//   return mean / numbers.length
// }


function median(arr, even_or_odd) {
  if (even_or_odd == "even") {
    for (count = 0; count < arr.length; count++) {
      if (arr[count] % 2 == 0) {
        arr.splice(count, 1);
        count -= 1;
      }
    }
  }
  else if (even_or_odd == "odd") {
    for (var count = 0; count < arr.length; count++) {
      if (arr[count] % 2 == 1) {
        arr.splice(count, 1);
        count -= 1;
      }
    }
  }
  else {
    console.log("Nothing");
  }
  // .sort will not sort numbers as one might expect. For example 1, 11, 12, 5, 73 is the output of .sort. With the 'function(a, b){return a-b}' added it would return 1, 5, 11, 12, 73.
  arr.sort(function(a, b){return a-b});
  console.log(arr);
  var med_index = arr.length / 2;
    if (arr.length % 2 == 0) {
      var median_avg = (arr[med_index - 1] + arr[med_index]) / 2
      console.log(median_avg);
    }
    else {
      console.log(arr[med_index - 0.5]);
    }
}

// Refactor

// function median(numbers){
//   organize = numbers.sort();
//   size = organize.length
//   if(size % 2 !== 0 ){
//     return organize[(size-1)/2]
//   }
//   else {
//     var middle = organize[(size/2)] + organize[(size/2)-1]
//   }
//   return middle/2
// }
// Driver Code

var test = [1, 2, 6, 3, 4, 5, 8, 13, 11, 73, 60];
median(test, "odd");

// var array = [1, 2, 6, 3, 4, 5, 8, 13, 11, 73, 60]

// console.log(sum(array));
// console.log(mean(array));
// console.log(median(array));
// Add the finished solution here when you receive it.
// __________________________________________
// Tests:  Do not alter code below this line.


oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

// tests for sum
assert(
  (sum instanceof Function),
  "sum should be a Function.",
  "1. "
)

assert(
  sum(oddLengthArray) === 27,
  "sum should return the sum of all elements in an array with an odd length.",
  "2. "
)

assert(
  sum(evenLengthArray) === 43,
  "sum should return the sum of all elements in an array with an even length.",
  "3. "
)

// tests for mean
assert(
  (mean instanceof Function),
  "mean should be a Function.",
  "4. "
)

assert(
  mean(oddLengthArray) === 3.857142857142857,
  "mean should return the average of all elements in an array with an odd length.",
  "5. "
)

assert(
  mean(evenLengthArray) === 5.375,
  "mean should return the average of all elements in an array with an even length.",
  "6. "
)

// tests for median
assert(
  (median instanceof Function),
  "median should be a Function.",
  "7. "
)

assert(
  median(oddLengthArray) === 4,
  "median should return the median value of all elements in an array with an odd length.",
  "8. "
)

assert(
  median(evenLengthArray) === 5.5,
  "median should return the median value of all elements in an array with an even length.",
  "9. "
)