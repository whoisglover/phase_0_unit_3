$(document).ready(function(){
 
//RELEASE 0: 
  //Link this script and the jQuery library to the jquery_example.html file and analyze what this code does. 
 
$('body').css({'background-color': 'pink'})
 
//RELEASE 1:
  //Add code here to select elements of the DOM 
  var bodyElement = $('body');
 
 
//RELEASE 2: 
  // Add code here to modify the css and html of DOM elements

$('h1').css({'color': 'purple'}) 
$('h1').css({'border': '5px solid black'})
$('h1').css({'visibility': 'visible' })

$('.mascot h1').html('FIREFLIES')
 
//RELEASE 3: Event Listener 
  // Add the code for the event listener here 

  $('img').on('mouseover', function(e){
     e.preventDefault()
    $(this).attr('src', 'http://static.ddmcdn.com/gif/firefly.jpg')
  });

  $('img').on('mouseleave', function(e){
  	e.preventDefault()
  	$(this).attr('src', 'http://cdn1.arkive.org/media/7B/7B2DF3C9-CE99-4F54-9ACC-BFDBED4E8081/Presentation.Large/Ad%C3%A9lie-penguin-walking.jpg')
  });
 
 
//RELEASE 4 : Experiment on your own
 
 $( ".mascot" ).click(function() {
  $( "img" ).animate({
    width: "30%",
    marginLeft: "0.6in",
    fontSize: "3em",
    borderWidth: "10px"
  }, 1500 );
});
 
 
 
 
})  // end of the document.ready function: do not remove or write DOM manipulation below this.
