// Tally Votes in JavaScript Pairing Challenge.
// I worked on this challenge with: Jonathan Kaplan
// This challenge took me [3] hours.
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

// INPUT: Nested votes object
// OUTPUT: Object for voteCount, second OUTPUT: object for officers

// DEFINE function that takes votes from object
// ITERATE through object twice
// CHECK for name, IF name then +1 else add name
// REPEAT for each position
// DEFINE function to take voteCount and key with highest value +1 to officers variable and associate with position key



// __________________________________________
// Initial Solution

var tally = function(vote){
//   for (var t = 0, f = votes.length; t < f; t++){
//     var obj = vote[key];
//     for (var i = 0, j = votes[key].length; i < j; i++){
//       if (obj.hasOwnProperty("president") /* = votes[president][key]*/ ){
//         voteCount["president"] += 1;

//       }
//    }
  // for (var i in vote){
  //   for (var name in i){
  //     for (var x in name){
  //       if(name.hasOwnProperty(x))
  //         voteCount[name] = 1;
  //     }
  //   }
  // }
  for (var name in vote){
    if (voteCount["president"][votes[name]["president"]]){ // if president: {bob: 1}
      voteCount["president"][votes[name]["president"]] += 1;
    }
    else {
      voteCount["president"][votes[name]["president"]] = 1; // if name doesnt exist, add the name
      }
    }


    for (var name in vote){

    if (voteCount["vicePresident"][votes[name]["vicePresident"]]){
      voteCount["vicePresident"][votes[name]["vicePresident"]] += 1;
    }
    else {
      voteCount["vicePresident"][votes[name]["vicePresident"]] = 1;
      }
    }

    for (var name in vote){

    if (voteCount["secretary"][votes[name]["secretary"]]){
      voteCount["secretary"][votes[name]["secretary"]] += 1;
    }
    else {
      voteCount["secretary"][votes[name]["secretary"]] = 1;
      }
    }

    for (var name in vote){

    if (voteCount["treasurer"][votes[name]["treasurer"]]){
      voteCount["treasurer"][votes[name]["treasurer"]] += 1;
    }
    else {
      voteCount["treasurer"][votes[name]["treasurer"]] = 1;
      }
    }

     console.log(voteCount)
  // }

//   for (var i = 0; i < vote.length; i++){
//     var president = vote[i][president] = 1
//     console.log(president); // "Alex" = {votes}


//   }

}

var officer = function(vote){
  var president = 0;
for (var name in voteCount["president"]){
    if (voteCount["president"][name] > president){
      president = voteCount["president"][name];
      officers["president"] = name;
    };
  };

  var viceP = 0;
  for (var name in voteCount["vicePresident"]){
    if (voteCount["vicePresident"][name] > viceP){
      viceP = voteCount["vicePresident"][name];
      officers["vicePresident"] = name;
    };
  };

  var secretary = 0;
  for (var name in voteCount["secretary"]){
    if (voteCount["secretary"][name] > secretary){
      secretary = voteCount["secretary"][name];
      officers["secretary"] = name;
    };
  };

  var treasurer = 0;
  for (var name in voteCount["treasurer"]){
    if (voteCount["treasurer"][name] > treasurer){
      treasurer = voteCount["treasurer"][name];
      officers["treasurer"] = name;
    };
  };


  console.log(officers)
}


tally(votes)
officer(voteCount)


// __________________________________________
// Refactored Solution
var tally = function(vote){
for (var name in votes){
    for (var pos in votes[name]){
    if (voteCount[pos][votes[name][pos]]){
      voteCount[pos][votes[name][pos]] += 1;
    }
      else {
      voteCount[pos][votes[name][pos]] = 1;
      }
    }
  }

console.log(voteCount)
}

var officer = function(vote){
    for (var pos in voteCount){
      var hold = 0;
      for (var name in voteCount[pos])
        if (voteCount[pos][name] > hold){
          hold = voteCount[pos][name];
          officers[pos] = name;
        };
      }
      console.log(officers)
    };


tally(votes)
officer(voteCount)


// __________________________________________
// Reflection
//What did you learn about iterating over nested objects in JavaScript?
// I learned that you can iterate over nested objects in JavaScript by nested for loops.

//Were you able to find useful methods to help you with this?
//We actually didn't use any methods, looking back now it's really surprising that none were used.

//What concepts were solidified in the process of working through this challenge?
// The concept of interating over nested objects was definitely solidified, as well as accessing multiple nested objects.

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