/*
U3.W8-9: Gradebook from Names and Scores

You will work with the following two variables.  The first, students, holds the names of four students.  
The second, scores, holds groups of test scores.  The relative positions of elements within the two 
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).

Do not alter the students and scores code.

I worked on this challenge by myself.

*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]






// __________________________________________
// Write your code below.

var average = function(scores){


  var total = 0.0
  for (var i = scores.length - 1; i >= 0; i--) {
      total += scores[i]
  };
  return total/scores.length

}

var gradebook = {
  Joseph: {testScores: scores[0]},
  Susan: {testScores: scores[1]},
  William: {testScores: scores[2]},
  Elizabeth: {testScores: scores[3]},
  addScore: function(name, score){
    switch(name){
    case 'Joseph':
        this.Joseph.testScores.push(score)
        break;
    case 'Susan':
        this.Susan.testScores.push(score)
        break;
    case 'William':
        this.William.testScores.push(score)
        break;
    case 'Elizabeth':
        this.Elizabeth.testScores.push(score)
        break;
    }
  },
  getAverage: function(name){
    switch(name){
    case 'Joseph':
        return average(this.Joseph.testScores)
        break;
    case 'Susan':
        return average(this.Susan.testScores)
        break;
    case 'William':
        return average(this.William.testScores)
        break;
    case 'Elizabeth':
        return average(this.Elizabeth.testScores)
        break;
    }
  }
};





// __________________________________________
// Refactored Solution
// I dont think I need to refactor my code at all.  It's extremely DRY and efficient. All my variable names are obvious and all the driver tests are passing.





// __________________________________________
// Reflect


// What parts of your strategy worked? What problems did you face?
// After reading the instructions I let the driver code guide my coding.  I really like having these detailed driver code assert statements.
// It felt good to get one to pass and move on to the next part.  By the end I had everything working to find the students average and simply had to put the pieces together.
// What questions did you have while coding? What resources did you find to help you answer them?
// I had a few questions on Javascript syntax, on things like self vs this.  Also I was a little rusty on creating functions inside of objects and objects inside of objects.
// W3 schools was great for clearing up these questions quickly.
// What concepts are you having trouble with, or did you just figure something out? If so, what?
// I'm not having trouble with any concepts in this challenge.
// Did you learn any new skills or tricks?
// I learned that you can put objects in objects as properties which seems really interesting to me.
// How confident are you with each of the Learning Competencies?
// I feel very confident with the Learning Competencies.
// Which parts of the challenge did you enjoy?
// I really enjoyed having the strong driver code to guide me step by step as I developed the object's functionality.
// Which parts of the challenge did you find tedious?
// I didn't find any part of this challenge tedious.






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
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "1. "
)

assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "2. "
)

assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "3. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "4. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "5. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "6. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "7. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Jospeh'.",
  "9. "
)