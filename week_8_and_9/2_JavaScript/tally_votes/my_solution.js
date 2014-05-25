// U3.W8-9: Gradebook from Names and Scores

// I worked on this challenge by myself.

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

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

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

// Pseudocode
// Tests 1,2,3 and 4:
//   1. For each person in the votes variable,
//   2. go through each vote that person made. If their candidate has already been voted for,
//   3. increment their vote count by 1, otherwise create a property in the voteCount variable with the candidate name and a corresponding vote count of 1.

// Tests 5,6,7 and 8:
//   1. For each title in the voteCount variable,
//   2. go through each candidate and check their vote count. If they've received the most votes for that title, 
//   3. set their name as the value for the corresponding title property in the officers variable.

// __________________________________________
// Initial Solution
// for(person in votes){
//   var personsVotes = votes[person];
//   for(title in personsVotes){
//     if (voteCount[title].hasOwnProperty(personsVotes[title])) {
//       voteCount[title][personsVotes[title]] += 1;
//     }

//     else{
//       voteCount[title][personsVotes[title]] = 1;
//     };  
//   }
// }

// for(title in voteCount){
//   console.log(title);
//   console.log(voteCount[title]);
//   maxVotes = 0;
//   elected = "";
//   for(candidate in voteCount[title]){
//     console.log(candidate);
//     console.log(voteCount[title][candidate]);
//     if (voteCount[title][candidate] > maxVotes) {
//       maxVotes = voteCount[title][candidate];
//       elected = candidate;
//     };
//   }
//   officers[title] = elected;
// }

// console.log(officers);



// __________________________________________
// Refactored Solution

for(person in votes){
  var personsVotes = votes[person];
  for(title in personsVotes){
    if (voteCount[title].hasOwnProperty(personsVotes[title])) {
      voteCount[title][personsVotes[title]] += 1;
    }
    else{
      voteCount[title][personsVotes[title]] = 1;
    };  
  }
}

for(title in voteCount){
  maxVotes = 0;
  elected = "";
  for(candidate in voteCount[title]){
    if (voteCount[title][candidate] > maxVotes) {
      maxVotes = voteCount[title][candidate];
      elected = candidate;
    };
  }
  officers[title] = elected;
}

// __________________________________________
// Reflection

// In this challenge, I learned how to use the for...in... syntax, as well as when to use bracket notation vs. dot notation when referencing an object's properties. In addition, I learned about the hasOwnProperty method, which will return true if the property already exists, and false otherwise. Once I discovered the hasOwnProperty method, this challenge was pretty straightforward. I had a few trip-ups regarding using dot notation vs. bracket notation, but after doing some research I was able to fully understand the difference between the two.



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