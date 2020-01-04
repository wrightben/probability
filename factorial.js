var nPr = function (n, r) {

	if ( ( typeof r != "number" ) || ( r > n ) ) { r = n; }

	var _ = function( n ) {
		
		var _n = n;
		
		for (var i = 1; i < _n; i ++ ) {
			n *= i;
		}
		
		if (n == 0) { n = 1; }
		
		return n;
		
	}
	
	return _(n) / _(n - r);
	
}

for (var i = 0; i < 53; i++) {
	console.log( i+", ", nPr(i) );
}