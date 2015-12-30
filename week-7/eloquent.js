// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var myAge = 52;
var yourAge = 32;
console.log("I am " + (myAge - yourAge) + " years older...");



var q = prompt("What is your favorite food?");
alert("Hey " + q + " is my favorite food, too");

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
var str = "";
for (var i = 1; i <= 7; i++) {
	str += "#";
	console.log(str);
}


// Functions

// Complete the `minimum` exercise.

var minNumber  = function(x,y) {
	if (x > y) {
		return x
	} else {
		return y
	}
}

console.log(minNumber(132,44));

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me = {
	name: "Timur",
	age: 45,
	favoriteFoods: ["fried rice", "dumplings", "meatballs"],
	quirk: "quirk goes here"
}


// Q-	Did you learn anything new about JavaScript or programming in general?

// Here is what I learnt JavaScript has almost nothing to do with the programming language named Java. The similar name was inspired by marketing considerations, rather than good judgment.

// Q- Are there any concepts you feel uncomfortable with?
// Not on this chapter. But most likely will be in the proceeding chapters.

// Q - Identify two similarities and two differences between JavaScript and Ruby syntax with regard to numbers, arithmetic, strings, booleans, and various operators.
// Math operations are done the same way in both languages.
// Logical operators are also the same.

// There are special numbers in JS like NaN and Infinity.
// There are undefined methods such as null and undefined

// Q- What is an expression?
// A fragment of code that produces a value is called an expression. 

// Q- What is the purpose of semicolons in JavaScript? Are they always required?
// In some cases, JavaScript allows you to omit the semicolon at the end of a statement. In other cases, it has to be there, or the next line will be treated as part of the same statement. 

// Q- What causes a variable to return undefined?
// If you ask for the value of an empty variable, you’ll get the value undefined.

// Q- Write your own variable and do something to it in the eloquent.js file.

// Q- What does console.log do and when would you use it? What Ruby method(s) is this similar to?
// Most JavaScript systems (including all modern web browsers and Node.js) provide a console.log function that writes out its arguments to some text output device. - Ruby version of print


// Q- Write a short program that asks for a user to input their favorite food. After they hit return, have the program respond with "Hey! That's my favorite too!" (You will probably need to run this in the Chrome console (Links to an external site.) rather than node since node does not support prompt or alert). Paste your program into the eloquent.js file.
// See above please

// Describe while and for loops
// A statement starting with the keyword while creates a loop. The word while is followed by an expression in parentheses and then a statement, much like if. The loop executes that statement as long as the expression produces a value that is true when converted to Boolean type.
// Many loops follow the pattern seen in the previous while examples. First, a “counter” variable is created to track the progress of the loop. Then comes a while loop, whose test expression usually checks whether the counter has reached some boundary yet. At the end of the loop body, the counter is updated to track progress.

// Because this pattern is so common, JavaScript and similar languages provide a slightly shorter and more comprehensive form, the for loop.

// for (var number = 0; number <= 12; number = number + 2)
//   console.log(number);
// → 0
// → 2
//   … etcetera

// What other similarities or differences between Ruby and JavaScript did you notice in this section?
// Conditional loops are pretty much the same.

// Complete at least one of the exercises (Looping a Triangle, FizzBuzz, of Chess Board) in the eloquent.js file.
// See above please...

// Q- What are the differences between local and global variables in JavaScript?
// Local variables declared with the var keyword inside the function body. Variables declared outside of any function are called global, because they are visible throughout the program. It is possible to access such variables from inside a function, as long as you haven’t declared a local variable with the same name.

// Q- When should you use functions?
// t is a tool to structure larger programs, to reduce repetition, to associate names with subprograms, and to isolate these subprograms from each other.

// Q- What is a function declaration?
// The function keyword can also be used at the start of a statement, as in the following:

// function square(x) {
//   return x * x;
// }
// This is a function declaration.

// Q- Complete the minimum exercise in the eloquent.js file.
// See above

// Q- What is the difference between using a dot and a bracket to look up a property? Ex. array.max vs array["max"]
// Square bracket notation allows use of characters that can't be used with dot notation: The second advantage of square bracket notation is when dealing with variable property names. The second advantage of square bracket notation is when dealing with variable property names.

// Q- Create an object called me that stores your name, age, three favorite foods, and a quirk in your eloquent.js file.
// see above
// Q- What is a JavaScript object with a name and value property similar to in Ruby?
// Hash



// What are the biggest similarities and differences between JavaScript and Ruby?
// JS is not as forgiving as Ruby. Also not as flexible. But JS acceptance rate and ability to manioulate DOM is amazin.

// Was some of your Ruby knowledge solidified by learning another language? If so, which concepts?
// Definitely. Math operations, logical operators, array...

// How do you feel about diving into JavaScript after reading these chapters?
// I am loving it