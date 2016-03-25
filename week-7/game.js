 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: To obtain the antidote
// Goals:kill a zombie
// Characters:survivor, zombie1, and zombie2
// Objects:suvivor, antidote, zombie1, zombie2, friend
// Functions:move survivor

// Pseudocode
//Establish survivor object that has position, success, fire, and friend properties
//Establish zombie1 and zombie 2 objects that will be at random positions
//Establish fire object and set it at a random position.
//Declare a function that will move the survivor around within the survivor object
//Declare a function that will show you how many times you have encountered a friend
//When you move the survivor, move the zombies print where they are.
//Show where the survivor is
//Check if survivor has fire
//Check if survivor has fire and encountered a zombie, if so, print to console that they killed the zombie
//Check if the survivor has encountered a zombie without fire, if so, print to console that you died.
//Check if the survivor has encountered the antidote, if so, you won!

// Initial Code

var survivor = {
posX: 0,
posY: 0,
success: false,
fire: false,
friend: [],
counter: 0,

move: function(direction) {
  if(direction === 'forward'){
    this.posX +=10;
  }
  else if(direction === 'back'){
    survivor.posX -=10;
  }
  else if(direction === 'up'){
    survivor.posY += 10;
  }
  else if(direction === 'down'){
    survivor.posY -=10;
  }

survivor.counter += 1;
//when the survivor moves, the zombies moves too
  zombie.posX = Math.floor((Math.random()*100)+1);
  zombie.posY = Math.floor((Math.random()*100)+1);

  zombie2.posX = Math.floor((Math.random()*100)+1);
  zombie2.posY = Math.floor((Math.random()*100)+1);

  console.log("The first zombie's position is " + zombie.posX + "," + zombie.posY);
  console.log("The second zombie's position is " + zombie2.posX + "," + zombie2.posY);

//Show where survivor is
console.log("survivor's position is " + survivor.posX + "," + survivor.posY);

//After every move, check if the survivor is at the fire
if(survivor.posX === fire.posX && survivor.posY === fire.posY){
  survivor.fire = true;
  console.log("You acquired fire, if you encounter a zombie you can kill it!");
}
//check if survivor has fire and is at the zombie's position
else if(survivor.posX === (zombie.posX || zombie2.posX) && survivor.posY === (zombie.posY || zombie2.posY) && survivor.fire === true){
  survior.fire = false;
  console.log("You used the fire and killed a zombie, continue to find the antidote. Just be carefull, there's still one more zombie out to get you.")
}
//check if survivor has encountered a friend, move the friend after
else if(survivor.posX === friend.posX && survivor.posY === friend.posY){
  survivor.friend.push("x");
  console.log("You found a friend to give you food! You can have 10 more tries to find the zombie.")
  posX: Math.floor((Math.random()*100)+1);
  posY: Math.floor((Math.random()*100)+1);
}

//check if the user has had 10 turns and not run into a friend for food
else if(survivor.counter === 10 && survivor.friend.length < 1){
  console.log("You didn't run into a friend and starved to death, you lose.");
}

//check if survivor encountered a zombie
else if(survivor.posX === (zombie.posX || zombie2.posX) && survivor.posY === (zombie.posY || zombie2.posY) && survivor.fire === false){
  console.log("You encountered a zombie, you lose.");
}

//check if the survivor has reached the antidote
else if(survivor.posX === antidote.posX && survivor.posY === antidote.posY){
  survivor.success = true;
console.log("You reached the antidote, you win!!")
}

}

};

var antidote = {
posX: Math.floor((Math.random()*100)+1),
posY: Math.floor((Math.random()*100)+1)
};

var zombie = {
posX: Math.floor((Math.random()*100)+1),
posY: Math.floor((Math.random()*100)+1)
};

var zombie2 = {
posX: Math.floor((Math.random()*100)+1),
posY: Math.floor((Math.random()*100)+1)
};

var fire = {
posX: Math.floor((Math.random()*100)+1),
posY: Math.floor((Math.random()*100)+1)
}

var friend = {
posX: Math.floor((Math.random()*100)+1),
posY: Math.floor((Math.random()*100)+1)
}



// Refactored Code

var survivor = {
posX: 0,
posY: 0,
fire: false,
friend: [],
counter: 0,

move: function(direction) {
  if(direction === 'forward'){
    this.posX +=10;
  }
  else if(direction === 'back'){
    survivor.posX -=10;
  }
  else if(direction === 'up'){
    survivor.posY += 10;
  }
  else if(direction === 'down'){
    survivor.posY -=10;
  }

survivor.counter += 1;
  zombie.posX = Math.floor((Math.random()*100)+1);
  zombie.posY = Math.floor((Math.random()*100)+1);

  zombie2.posX = Math.floor((Math.random()*100)+1);
  zombie2.posY = Math.floor((Math.random()*100)+1);

  console.log("The first zombie's position is " + zombie.posX + "," + zombie.posY);
  console.log("The second zombie's position is " + zombie2.posX + "," + zombie2.posY);

console.log("Your position is " + survivor.posX + "," + survivor.posY);

if(survivor.posX === fire.posX && survivor.posY === fire.posY){
  survivor.fire = true;
  console.log("You acquired fire, if you encounter a zombie you can kill it!");
}
else if(survivor.posX === (zombie.posX || zombie2.posX) && survivor.posY === (zombie.posY || zombie2.posY) && survivor.fire === true){
  survior.fire = false;
  console.log("You used the fire and killed a zombie, continue to find the antidote. Just be carefull, there's still one more zombie out to get you.")
}
else if(survivor.posX === friend.posX && survivor.posY === friend.posY){
  survivor.friend.push("x");
  survivor.counter = 0;
  console.log("You found a friend to give you food! You can have 10 more tries to find the zombie.")
  posX: Math.floor((Math.random()*100)+1);
  posY: Math.floor((Math.random()*100)+1);
}

else if(survivor.counter === 10 && survivor.friend.length < 1){
  console.log("You didn't run into a friend and starved to death, you lose.");
}

else if(survivor.posX === (zombie.posX || zombie2.posX) && survivor.posY === (zombie.posY || zombie2.posY) && survivor.fire === false){
  console.log("You encountered a zombie, you lose.");
}

else if(survivor.posX === antidote.posX && survivor.posY === antidote.posY){
console.log("You reached the antidote, you win!!")
}

}

};

var antidote = {
posX: Math.floor((Math.random()*100)+1),
posY: Math.floor((Math.random()*100)+1)
};

var zombie = {
posX: Math.floor((Math.random()*100)+1),
posY: Math.floor((Math.random()*100)+1)
};

var zombie2 = {
posX: Math.floor((Math.random()*100)+1),
posY: Math.floor((Math.random()*100)+1)
};

var fire = {
posX: Math.floor((Math.random()*100)+1),
posY: Math.floor((Math.random()*100)+1)
}

var friend = {
posX: Math.floor((Math.random()*100)+1),
posY: Math.floor((Math.random()*100)+1)
}

console.log("Start your post apocolyptic journey!");




// Reflection

//What was the most diffiult part of this challenge?
//The hardest part was gettting the counter to work correctly when I needed something to happen after ten turns and one condition.

//What did you learn about creating objects and functions that interact with one another?
//I learned that you can put functions inside an object, it confused me because that would be like putting a method inside of a hash in Ruby. I also learned that you can sort of make multiple functions in one

//Did you learn about any new built-on methods you could use in your refactored solution? If so, what were they and how do they work?
//I learned about the floor method combined with the random method syntax which will give a random number between 1 and 100.

//How can you access and manipulate properties of objects?
//You can access and manipulate properties of objects by typing the object name followed by a period and the property name. You can manipulate that property simply by typing "=" followed by what you want to update that property with.



