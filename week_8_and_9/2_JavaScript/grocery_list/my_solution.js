// U3.W8-9: 


// I worked on this challenge with Natalie McCroy.

// 2. Pseudocode

// 1. create GroceryList
// 2. create GroceryItems
// 3. Items has a name, quantity
// 4. functions to add an item, to delete an item, and to view list


// 3. Initial Solution


function GroceryItems(name, quantity) {
  this.name = name,
  this.quantity = quantity
};

var groceryList = [];

var apple = new GroceryItems("apple(s)", 5);
var banana = new GroceryItems("banana(s)", 3);
var cheese = new GroceryItems("cheese(s)", 6);
var beer = new GroceryItems("beer(s)", 12);

var addItem = function(item) {
  	groceryList.push(item)
};

var deleteItem = function(item) {

  	while (groceryList.indexOf(item) !== -1) {
    	groceryList.splice(groceryList.indexOf(item), 1);
  	};
};

var viewList = function(){
	console.log("Here is a list of your items:")

	for (var i = 0; i < groceryList.length; i++) {
  		console.log(groceryList[i].quantity, groceryList[i].name);
  	};
};


addItem(apple);
addItem(banana);
addItem(cheese);
addItem(beer);


viewList();
deleteItem(apple);
console.log("------------------");
viewList();


// 4. Refactored Solution

// Not really sure how to refactor this particular solution. Natalie and I ended up completing 
// this exercise the "ruby" way, which simply means that we mimicked the class structure that
// javascript does not have. We inititally discussed whether this would be a good idea or not,
// because we could have also tackled this problem by making our groceryList an object that
// then holds other objects like so:

// var groceryList = { 
// 	apple: {name: "apple(s)", quantity: 5}, 
// 	banana: {name: "banana(s)", quantity: 3},
// 	cheese: {name: "cheese(s)", quantity: 6},
// 	beer: {name: "beer(s)", quantity: 12} 
// };

// However, we both agreed that because we were out of practice with JS and more comfortable 
// with ruby (at the moment, anyway), we would make the code work the best way we knew how.




// 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

console.log(groceryList.length === 4); // at first
console.log(groceryList.length === 3); // after deleting an object
console.log(apple.name === "apple(s)");
console.log(apple.quantity === 5);
console.log(banana.name === "banana(s)");
console.log(banana.quantity === 3);
console.log(cheese.name === "cheese(s)");
console.log(cheese.quantity === 6);
console.log(beer.name === "beer(s)");
console.log(beer.quantity === 12);


// 5. Reflection 

// I'm not super happy with my JS skills. This week made me realize just how frustrating the 
// old adage is that "if you don't use it, you lose it." I've lost so much that I learned about
// js already! I'm constantly working with Ruby, HTML, and CSS, so I feel that I have a decent
// grasp on those (and by decent, I mean for a beginner). But getting back into js was such a 
// confidence suck; I had to look up everything from syntax, to looping, to creating objects,
// etc. At least when I looked it up it all seemed familiar, but I'm annoyed that I can't retain
// as much as I had hoped to. Looks like I'll be dedicating a lot of time to JS in the next week.