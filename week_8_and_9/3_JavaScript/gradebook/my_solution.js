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


// var average = function(gradesArray) {
//   var sum = 0;
//   for (var i = 0; i < gradesArray.length; i++ ) {
//     sum += gradesArray[i];
//   }

//   var avg = sum/gradesArray.length;
//   return avg;

// };

// var gradebook = {
//   "Joseph": {
//     testScores: scores[0]
//   },

//   "Susan": {
//     testScores: scores[1]

//   },

//   "William": {
//     testScores: scores[2]

//   },

//   "Elizabeth": {
//     testScores: scores[3]

//   },



//   addScore: function(name, newScore) {
      
//         switch(name) {
//           case 'Joseph':
//             return scores[0].push(newScore);
//             break;
//           case 'Susan':
//             return scores[1].push(newScore);
//             break;
//           case 'William':
//             return scores[2].push(newScore);
//             break;
//           case 'Elizabeth':
//             return scores[3].push(newScore);
//             break;
//           default:
//             return "Error: Not a student.";
//             break;
//         }
//       },

//   getAverage: function(name) {
    
//       switch(name) {
//         case 'Joseph':
//           return average(scores[0]);
//           break;
//         case 'Susan':
//           return average(scores[1]);
//           break;
//         case 'William':
//           return average(scores[2]);
//           break;
//         case 'Elizabeth':
//           return average(scores[3]);
//           break;
//         default:
//           return "Error: Not a student.";
//           break;
//       }
//   }

// };




// __________________________________________
// Refactored Solution

var average = function(gradesArray) {
  var sum = 0;
  for (var i = 0; i < gradesArray.length; i++ ) { sum += gradesArray[i] }

  var avg = sum/gradesArray.length;
  return avg;
};


var gradebook = {
  Joseph:{ testScores: scores[0] },
  Susan:{ testScores: scores[1] },
  William:{ testScores: scores[2] },
  Elizabeth:{ testScores: scores[3] },
  addScore:function(studentName, grade) {
    gradebook[studentName].testScores.push(grade);
  },
  getAverage:function(studentName) {
    return average(gradebook[studentName].testScores);
  }
};




// __________________________________________
// Reflect

// Getting back into Javascript SUCKS. This one challenge took me forever, because I kept
// writing my functions like this: gradebook.studentName.testScores.push(grade). This returns
// an error, because JS doesn't know that my argument variable "studentName" should be 
// subsituted for the actual student's name. I abandoned that method, and then went on to
// write those crazy switch statements (which were at least good practice). I knew it looked
// crazy, but I couldn't get the code to work for hours, which is why I finally just tried
// something ugly that I knew would pass the tests. Afterwards, I went trolling online for 
// help, and found that I need those damned BRACKETS instead. Ugh, this could have taken me 15
// minutes to finish; instead, 5 hours later, I'm finally done. 







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