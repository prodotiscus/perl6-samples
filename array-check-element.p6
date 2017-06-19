#!/usr/bin/perl6
my @arr = <the quick brown fox 5 2 9>;
say 'fox' eq any(@arr) ?? 'YES' !! 'NO';
say 'dog' eq any(@arr) ?? 'YES' !! 'NO';
say 3 eq any(@arr) ?? 'YES' !! 'NO';
say 2 eq any(@arr) ?? 'YES' !! 'NO';
# Output:
# YES
# NO
# NO
# YES
