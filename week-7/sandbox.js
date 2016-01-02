var winner = function() {
console.log("WINNER");};
var loser = function() {
console.log("LOSER");
};
// let's test as a warm up winner();
// let's assign to other variables for practice var a = winner;
var a = winner;
var b = loser;
var c = loser;
a();
b();
// now let's try your luck with a shell game
c = a;	// a= winner | b = loser | c = winner
a = b;	// a= loser | b = loser | c = winner
b = c;	// a= loser | b = winner | c = winner
c = a;	// a= loser | b = winner | c = loser
a = c;	// a= loser | b = winner | c = loser
a = b;	// a= winner | b = winner | c = loser
b = c;	// a= winner | b = loser | c = loser
a();