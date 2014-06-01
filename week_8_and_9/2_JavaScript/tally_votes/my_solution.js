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
//step 1) make a new var, pass votes into it.
//step 2) new var output should "1" to property in voteCount (selected position, selected candidate) or "+1" to property.
//step 3) find the largest num of votes for each position out of the given candidates. 
//step 4) list those candidates in officers.

// __________________________________________
// Initial Solution





// __________________________________________
// Refactored Solution



var vote_counter = function(vote){
    for (pos in vote){
        var choices = vote[pos];
        //console.log(pos+ " voted for:") 
        //console.log(choices.president)
        
        var pres = choices.president
        var vp = choices.vicePresident
        var sec = choices.secretary
        var tres = choices.treasurer
        if(voteCount.president[pres] === undefined)
            voteCount.president[pres] = 1
        else
            voteCount.president[pres] += 1
        
        if(voteCount.vicePresident[vp] === undefined)
            voteCount.vicePresident[vp] = 1
        else
            voteCount.vicePresident[vp] +=1
            
        if(voteCount.secretary[sec] === undefined)
            voteCount.secretary[sec] = 1
        else
            voteCount.secretary[sec] +=1  
            
        if(voteCount.treasurer[tres]=== undefined)
            voteCount.treasurer[tres] = 1
        else
            voteCount.treasurer[tres] +=1  
        
        
        
        //listing each voter
        //for(i in pos)
        //console.log(i)

        
        //listing each vote
    }
}

vote_counter(votes)
//console.log(voteCount.president)
//console.log(voteCount.president.Zach)



var find_max = function(voteCount){
    var pres_max = 0
    var potential_pres_nom = ""
    var vice_max = 0
    var potential_vice_nom = ""
    var sec_max = 0
    var potential_sec_nom = ""
    var tres_max = 0
    var potential_tres_nom = ""

      for (potential_pres_nom in voteCount.president) {
        if (voteCount.president[potential_pres_nom] > pres_max) {
          pres_max = voteCount.president[potential_pres_nom];
          president = potential_pres_nom;
        }
        officers.president = president;
      }

      for (potential_vice_nom in voteCount.vicePresident) {
        if (voteCount.vicePresident[potential_vice_nom] > vice_max) {
          vice_max = voteCount.vicePresident[potential_vice_nom];
          vicePresident = potential_vice_nom;
        }
        officers.vicePresident = vicePresident;
      }

       for (potential_sec_nom in voteCount.secretary) {
        if (voteCount.secretary[potential_sec_nom] > sec_max) {
          sec_max = voteCount.secretary[potential_sec_nom];
          secretary = potential_sec_nom;
        }
        officers.secretary = secretary;
      }

        for (potential_tres_nom in voteCount.treasurer) {
          if (voteCount.treasurer[potential_tres_nom] > tres_max) {
            tres_max = voteCount.treasurer[potential_tres_nom];
            treasurer = potential_tres_nom;
          }
          officers.treasurer = treasurer;
      }
}
 
 

      

find_max(voteCount)
//console.log(officers.president)
//console.log(officers.vicePresident)
//console.log(officers.secretary)
//console.log(officers.treasurer)


//REFLECTION 
/*

function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

  //console.log(voteCount.president["Bob"])
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
//console.log(officers.vicePresident + ": elected vice pres")
//console.log(voteCount.vicePresident["Hermann"] + " hermann votes")
//console.log(voteCount.vicePresident["Zane"] + " zane votes")
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



