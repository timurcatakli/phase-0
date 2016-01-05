function titleCase(str) {
	var newArray = str.split(' ');
	var result = [];
	console.log(newArray);
	result = newArray.map(
		function(c) {
			return c.replace(/^./, function(k) {
				return k.toUpperCase()
			});
		}
	)
	return result;
}

titleCase("I'm a little tea pot");