#!/usr/bin/perl6
# Euclidean algorithm written in Perl6
# `is copy` is used to assign to $a and $b arguments
# because sub arguments cannot be modified by default
sub euclidean (Int $a is copy, Int $b is copy) returns Int {
	my $c;
	while ($b) {
		$c = $a % $b;
		$a = $b;
		$b = $c;
	}
	return $a;
}
say euclidean(8, 24);
# Output: 8
