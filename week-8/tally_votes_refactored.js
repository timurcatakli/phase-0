// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Dan Turca
// This challenge took me [1] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// __________________________________________
// Refactored Solution


// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}
for(var key in votes) {
  for(var position in votes[key]) {
    var candidate = votes[key][position];
    var positionBallot = voteCount[position];
    if (candidate in positionBallot) {
      positionBallot[candidate] += 1;   
    } else {
      positionBallot[candidate] = 1;  
    };
  };
}


function findMax(obj) {
  var counter = 0;
  var maxKey = '';
  for(var key in obj) {

    if (obj[key] > counter){
      maxKey = key;
      counter = obj[key];
    };
  }
  return maxKey;
};

// console.log(voteCount);


// console.log(voteCount);






/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...

  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }

*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}
for(var key in officers) {
  officers[key] = findMax(voteCount[key]);
}
// Pseudocode

// ITERATE votes object's subobjects
// FIND each candidate and COUNT votes
// ADD vote counts to voteCount object
// FIND MAX value of EACH POSITION
// ADD MAX to officers object
// __________________________________________
// Initial Solution

// Tally the votes in voteCount.
// var voteCount = {
//   president: {},
//   vicePresident: {},
//   secretary: {},
//   treasurer: {}
// }
// for(var key in votes) {
//   // console.log(votes[key]['president']);
 
//   if (votes[key]['president'] in voteCount['president']) {
//     voteCount['president'][votes[key]['president']] += 1;   
//   } else {
//     voteCount['president'][votes[key]['president']] = 1;  
//   };

//   if (votes[key]['vicePresident'] in voteCount['vicePresident']) {
//     voteCount['vicePresident'][votes[key]['vicePresident']] += 1;   
//   } else {
//     voteCount['vicePresident'][votes[key]['vicePresident']] = 1;  
//   };

//   if (votes[key]['secretary'] in voteCount['secretary']) {
//     voteCount['secretary'][votes[key]['secretary']] += 1;   
//   } else {
//     voteCount['secretary'][votes[key]['secretary']] = 1;  
//   };

//   if (votes[key]['treasurer'] in voteCount['treasurer']) {
//     voteCount['treasurer'][votes[key]['treasurer']] += 1;   
//   } else {
//     voteCount['treasurer'][votes[key]['treasurer']] = 1;  
//   };
// }


// function findMax(obj) {
//   var counter = 0;
//   var maxKey = '';
//   for(var key in obj) {

//     if (obj[key] > counter){
//       maxKey = key;
//       counter = obj[key];
//     };
//   }
//   return maxKey;
// };


// __________________________________________
// Reflection

// What did you learn about iterating over nested objects in JavaScript?
// I learnt that the KEY in FOR IN KEY loop returns string.

// Were you able to find useful methods to help you with this?
// We didnt use any new methods...

// What concepts were solidified in the process of working through this challenge?
// Iterating through nested objects was solidified



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
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)