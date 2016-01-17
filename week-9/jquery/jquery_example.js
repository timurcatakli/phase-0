// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image


//RELEASE 1:



//Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css(
	{'background-color': 'pink'}
	)


//RELEASE 2:
  //Add code here to select elements of the DOM
bodyElement = $('body');
tagH1 = $('h1');
tagImg = $('img');

//RELEASE 3:
  // Add code here to modify the css and html of DOM elements


// color
// border
// visibility

$('h1:first').css({
	'color': 'yellow',
	'border': '4px dotted black',
	'visibility': 'visible'
});

$('h1:last').html("Squirrels 2016");


//RELEASE 4: Event Listener
  // Add the code for the event listener here


$('img').on('mouseover', function(e){
    e.preventDefault();
    $(this).attr('src', 'https://img0.etsystatic.com/016/0/5867750/il_570xN.447255054_fqnh.jpg')
})

$('img').on('mouseout', function(e){
    e.preventDefault();
    $(this).attr('src', 'dbc_logo.png')
})

//RELEASE 5: Experiment on your own

$('img').click(function(e){
	e.preventDefault();
	$(this).animate({
		opacity: 0.25,
		borderWidth: 10,
		height: '-=300', 
	}, 1500);
	
});



})  // end of the document.ready function: do not remove or write DOM manipulation below this.






// What is jQuery?
// Query is a fast, small, and feature-rich JavaScript library. It makes things like HTML document traversal and manipulation, event handling, animation, and Ajax much simpler with an easy-to-use API that works across a multitude of browsers.

// What does jQuery do for you?
// jQuery takes a lot of common tasks that require many lines of JavaScript code to accomplish, and wraps them into methods that you can call with a single line of code.

// jQuery also simplifies a lot of the complicated things from JavaScript, like AJAX calls and DOM manipulation.



// What did you learn about the DOM while working on this challenge?
// How to select HTML elements in relation to other elements.