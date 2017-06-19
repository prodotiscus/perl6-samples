#!/usr/bin/perl6
# This can split an integer to (Match) object of digits
# The object can be further used as array or hash etc.
grammar integer {
	rule TOP {
		^
			[<position>]+
		$
	}
	token position {
		\d
	}
}
my $i = 3573;
say integer.parse($i);
