// Moz://a
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math/random
// The Math.random() function returns a floating-point, pseudo-random number in the range 0–1 (inclusive of 0, but not 1) with approximately uniform distribution over that range — which you can then scale to your desired range.

var max = 4; // [0,1,2,3,4]
console.log( Math.floor( Math.random() * (max + 1) ) );