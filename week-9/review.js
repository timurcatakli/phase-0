http://timurcatakli.github.io/projects/js-grocery/


// Release 1: Create your user stories
// Create a new list
// Add an item with a quantity to the list
// Remove an item from the list
// Update quantities for items in your list
// Print the list

// Release 2: Pseudocode
// CREATE empty grocery list and store locally.
// GET input value for grocery list and quantity
// UPDATE view and add item to the list.
// CLICK on delete icon deletes item from local storage and update view
// CLICK on the item opens up a modal window and ask for updated info
// SUBMIT FORM and update item name and quantity
// UPDATE view

// Release 5: Reflect

// Create a commented reflection section in your "review.js" file. In it answer the following questions:

// What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
// Most of jquery methods and especially the on method got solidified...
// // What was the most difficult part of this challenge?
// Figuring out a way to pass nested object data to jquery selectors
// // Did an array or object make more sense to use and why?
// Nope, I preferred using an object and stored it locally using HTML 5 Local Storage because I needed item name and quantity.

// Release 3: Initial Solution

$(document).ready(function(){

	var items = getFromLocal('items');
	loadList();
	$('#main-input').focus();
	// Put the object into storage
	localStorage.setItem('items', JSON.stringify(items));

	function getFromLocal(key){
		if(localStorage[key])
			return JSON.parse(localStorage[key]);
		else 
			return [];
	}



	// loadList
	function loadList(){	
		// Retrieve the object from storage
		var retrievedItems = localStorage.getItem('items');
		var itemList = JSON.parse(retrievedItems);
		
		for(var key in itemList) {
			$('ul').append('<li key=' + key + ' quantity=' + itemList[key] + ' class= "list-group-item" data-toggle="modal" data-target="#editModal">' + key + ' x ' + itemList[key] + '<span class="glyphicon glyphicon-remove"></span</li>');
		}
	};


	//bind input enter with button submit
	$("#main-quantity, #main-input").keypress(function(e){
		if(e.which === 13) {
			if ($('#main-input').val().length !== 0)
				$('#main-button').click();
			}
	});


	$('#edit-button').click(function(){
		var remove = $('#originalItem').val();
		var itemName = $('#editItem').val()
		var itemQuantity = $('#editQuantity').val()
		delete items[remove];
		items[itemName] = itemQuantity;
		$('li[key=' + remove + ']').remove();
		$('ul').append('<li key=' + itemName + ' quantity=' + itemQuantity + ' class= "list-group-item" data-toggle="modal" data-target="#editModal">' + itemName + ' x ' + itemQuantity + '<span class="glyphicon glyphicon-remove"></span</li>');
		localStorage.setItem('items', JSON.stringify(items));
	});


	$('#main-button').click(function(){
		var itemName = $('#main-input').val();
		var itemQuantity = $('#main-quantity').val();
		
		items[itemName] = itemQuantity;
		localStorage.setItem('items', JSON.stringify(items));
		$('ul').append('<li key=' + itemName + ' quantity=' + itemQuantity + ' class= "list-group-item" data-toggle="modal" data-target="#editModal">' + itemName + ' x ' + itemQuantity + '<span class="glyphicon glyphicon-remove"></span</li>');
		$('#main-input').val('');
		$('#main-quantity').val('');
		$('#main-input').focus();
	});


	// delete one item
	$('ul').delegate("span", "click", function(event){
		event.stopPropagation();
		index = $('span').index(this);
		$('li').eq(index).remove();
		var j = 0;
		for (var i in items) {
			if (j === index) {
				delete items[i];	
			}
			++j
		};
		localStorage.setItem('items', JSON.stringify(items));	
	});

	// edit panel
	$('ul').delegate('li', 'click', function(){
		item = $(this).attr('key');
		quantity = $(this).attr('quantity');
		$('#originalItem').val(item);
		$('#editItem').val(item);
		$('#editQuantity').val(quantity);
	});
});


// Release 4: Refactor

$(document).ready(function(){

	var items = getFromLocal('items');
	loadList();
	$('#main-input').focus();
	// Put the object into storage
	localStorage.setItem('items', JSON.stringify(items));

	function getFromLocal(key){
		if(localStorage[key])
			return JSON.parse(localStorage[key]);
		else 
			return [];
	}



	// loadList
	function loadList(){	
		// Retrieve the object from storage
		var retrievedItems = localStorage.getItem('items');
		var itemList = JSON.parse(retrievedItems);
		
		for(var key in itemList) {
			$('ul').append('<li key=' + key + ' quantity=' + itemList[key] + ' class= "list-group-item" data-toggle="modal" data-target="#editModal">' + key + ' x ' + itemList[key] + '<span class="glyphicon glyphicon-remove"></span</li>');
		}
	};


	//bind input enter with button submit
	$("#main-quantity, #main-input").keypress(function(e){
		if(e.which === 13) {
			if ($('#main-input').val().length !== 0)
				$('#main-button').click();
			}
	});


	$('#edit-button').click(function(){
		var remove = $('#originalItem').val();
		var itemName = $('#editItem').val()
		var itemQuantity = $('#editQuantity').val()
		delete items[remove];
		items[itemName] = itemQuantity;
		$('li[key=' + remove + ']').remove();
		$('ul').append('<li key=' + itemName + ' quantity=' + itemQuantity + ' class= "list-group-item" data-toggle="modal" data-target="#editModal">' + itemName + ' x ' + itemQuantity + '<span class="glyphicon glyphicon-remove"></span</li>');
		localStorage.setItem('items', JSON.stringify(items));
	});


	$('#main-button').click(function(){
		var itemName = $('#main-input').val();
		var itemQuantity = $('#main-quantity').val();
		
		items[itemName] = itemQuantity;
		localStorage.setItem('items', JSON.stringify(items));
		$('ul').append('<li key=' + itemName + ' quantity=' + itemQuantity + ' class= "list-group-item" data-toggle="modal" data-target="#editModal">' + itemName + ' x ' + itemQuantity + '<span class="glyphicon glyphicon-remove"></span</li>');
		$('#main-input').val('');
		$('#main-quantity').val('');
		$('#main-input').focus();
	});


	// delete one item
	$('ul').delegate("span", "click", function(event){
		event.stopPropagation();
		index = $('span').index(this);
		$('li').eq(index).remove();
		var j = 0;
		for (var i in items) {
			if (j === index) {
				delete items[i];	
			}
			++j
		};
		localStorage.setItem('items', JSON.stringify(items));	
	});

	// edit panel
	$('ul').delegate('li', 'click', function(){
		item = $(this).attr('key');
		quantity = $(this).attr('quantity');
		$('#originalItem').val(item);
		$('#editItem').val(item);
		$('#editQuantity').val(quantity);
	});
});
