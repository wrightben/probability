#!/usr/bin/perl

$s = @ARGV[0];
$if = @ARGV[1]; if (not defined $if) { $if = 0; } # Sequential Permutations: ($if=0=) 111 || ($if=1=) 123

@_o = ();
@_c = ();

for ($i = 0; $i < $s; $i ++ ) {

	$_ii = $i + 1;
	

	push @_o, "\n". ('/* '.($i + 1).' */') . ' for (var i'.$_ii.' = 0; i'.$_ii.' < _n; i'.	$_ii.'++) { ' ;
	
	# Exclusions: i-var2 != i-var1, etc.
	if ($i > 0) {
	
		@_exc = ();
		for ($ii = $i; $ii > 0; $ii --) {
			push @_exc, '(i'.($i+1).' != i'.($ii).')';
		}
		
		# Open Block: sequential permutations (1-2-3, instead of 1-1-1)
		push @_o,'if ('. join( ' && ', @_exc) .') {' if $if != 0;
		
		# Concatenation of i-vars in JS
		if ($i == $s - 1 ) {
			@_con = ();
			for ($iii = $i; $iii >= 0; $iii --) {
# 				push @_con, ('i'.($iii+1).' + 1');
				push @_con, ('i'.($iii+1));
			}
			push @_o, "\n\n". '_.push( [ '.(join ",", reverse @_con).' ].join(":") );'."\n\n";
		}		
					
		# Close Block: sequential permutations
		push @_c, "}" if $if != 0;
	
	}
	
	push @_c, "}";

}

print "\n( (typeof n != \"number\") || (n < $s) ) ? _n = $s : _n = n;\n";
print join "", @_o;
print join "", @_c;

print "\n";