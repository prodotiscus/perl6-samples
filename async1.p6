my $p1 = start {
	my $i = 0;
	for 1 .. 10 {
		$i += $_
    	}
	$i
};
my $p2 = start {
	my $i = 0;
	for 1 .. 10 {
		$i -= $_
	}
	$i
};
my @result = await $p1, $p2;
say @result;
