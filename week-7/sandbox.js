function makeCounter() {
	var count = 0;
	count = count + 1;
	return count;
}


// console.log(makeCounter());
// console.log(makeCounter());
// console.log(makeCounter());
// console.log(makeCounter());
// console.log(makeCounter());



function Car(params) {
	this.make = params.make;
	this.model = params.model;
	this.year = params.year;
	this.color = params.color;
	this.passengers = params.passengers;
	this.convertible = params.convertible;
	this.mileage = params.mileage;
	this.start = function() {
		this.started = true
	};
	this.drive = function() {
		if (this.started) {
			console.log(this.make + " " + this.model + " goes zoom zoom!");
		} else {
			console.log("Start the engine first...");
		}
	};
	this.stop = function() {
		this.started = false
	};
}

var chevyParams = {
	make: "Chevy",
	model: "Bel Air",
	year: 1957,
	color: "red",
	passengers: 2,
	convertible: false,
	mileage: 1021
}
var chevy = new Car(chevyParams);

// console.log(chevy instanceof Car);

// chevy.start();
// chevy.drive();
// var cadi = new Car("GM", "Cadillac", 1955, "tan", 5, false, 12892);
// var taxi = new Car("Webville Motors", "Taxi", 1955, "yellow", 4, false, 281341); var fiat = new Car("Fiat", "500", 1957, "Medium Blue", 2, false, 88000);

// var fido = new Dog("Fido");








function Dog(name, breed, weight) {
	this.name = name;
	this.breed = breed;
	this.weight = weight;
}

Dog.prototype.species = "Canine";
Dog.prototype.bark = function() {
	if (this.weight > 10) {
		console.log(this.name + " says Woofff");
	} else {
		console.log(this.name + " says Worrr");
	}
}
var fido = new Dog("Fido", "Wolf", 2);


console.log(fido.species);
fido.bark()