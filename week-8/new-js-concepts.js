// . Strict Mode

// . Chrome Debugging - Watch - Breakpoint

// . Exceptions

function promptDirection(question) {
	var result = prompt(question, "");
	if (result.toLowerCase() == "left") return "L";
	if (result.toLowerCase() == "right") return "R";
	throw new Error("Invalid direction: " + result);
}

function look() {
	if (promptDirection("Which way?") == "L")
		return "a house";
	else
		return "two angry bears";
}
try {
	console.log("You see", look());
} catch (error) {
	console.log("Something went wrong: " + error);
}

// .Assertions

function AssertionFailed(message) {
	this.message = message;
}
AssertionFailed.prototype = Object.create(Error.prototype);

function assert(test, message) {
	if (!test)
		throw new AssertionFailed(message);
}

function lastElement(array) {
	assert(array.length > 0, "empty array in lastElement");
	return array[array.length - 1];
}