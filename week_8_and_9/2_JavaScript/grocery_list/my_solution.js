// U3.W8-9: 


// Pairing Session Danny Glover Britney Van Valkenburg

// 2. Pseudocode
//Create an object to hold a single grocery item
//Create a grocerylist item that stores grocery items
//Add ability for to add to grocery list
//Add ability to remove item from grocery list
//Add display function to show the grocery list


// 3. Initial Solution

function groceryItem(food, quantity, brand, size){
    this.food = food;
    this.quantity = quantity;
    this.brand = brand;
    this.size = size;
}

function groceryList(){
    this.list =  [];
    this.addItem = function(item){
        this.list.push(item)  
        // console.log(this.list)
    };
    this.removeItem = function(item){
        for(var i in this.list){
          if(this.list[i] == item){
              this.list.splice(i, 1);
          }
        }
    };
    this.displayList = function(){
      for (var i in this.list) {
        console.log(this.list[i]);
      }
    };
};

// 4. Refactored Solution
// We don't believe this code needs any refactoring.  It is both DRY and easy to read/understand.

// 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE


var banana = new groceryItem('banana', 1, 'Dole', 'medium');
var pb = new groceryItem('pb', 1, 'Jiffy', 'medium');

var ourList = new groceryList();
ourList.addItem(banana);
ourList.addItem(pb);
ourList.displayList();
ourList.removeItem(banana);
console.log("List after delete")
ourList.displayList();

// 5. Reflection 
// This was a good pairing session with Britney.  We were both pretty rusty on our javascript and struggled through it.  This
// struggling helped us both learn.  We were doing a lot of research on the side on stack overflow and w3 school to figure
// out syntax and how objects work.  We started making objects but then realized they should actually be functions so we could
// make multiple items.  Also using the function let us use the word new to instantiate objects.  I feel better about javascript
// after this challenge but I still think I need to review before starting on Monday.
