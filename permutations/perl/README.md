### Use
```
# ARGV[0] = 3 = r (number of loops)
# ARGV[1] = [0,1] (optionally include if-exclusions: 1-2-3 instead of 1-1-1)
perl i.pl 3 1
```

**n(P)r**
* if n is set in JS file, r must be <= n
* else n = r


#### Output
```

( (typeof n != "number") || (n < 3) ) ? _n = 3 : _n = n;

/* 1 */ for (var i1 = 0; i1 < _n; i1++) { 
/* 2 */ for (var i2 = 0; i2 < _n; i2++) { if ((i2 != i1)) {
/* 3 */ for (var i3 = 0; i3 < _n; i3++) { if ((i3 != i2) && (i3 != i1)) {

_.push( [ i3,i2,i1 ].join("") );

}}}}}

```

#### Create a JavaScript file
```
var	_ = [],
	n = undefined;


	// Output goes here!


console.log( _.sort().join(",") );
```