#!/usr/bin/perl6
my $i = 59243;
$i ~~ /(\d)+/;
my $nulls = $/.[0].elems - 1;
for $/.[0] -> $position {
	say $position ~ 0 x $nulls;
	-- $nulls;
}
# Output: 50000 \n 9000 \n 200 \n 40 \n 3
