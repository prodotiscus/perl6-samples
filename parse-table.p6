#!/usr/bin/perl6
my $string = Q (
	language: Perl
	created: 7 seconds ago
	visibility: public
);
grammar t_table {
	rule TOP {
		<[\n\t]>* <element>+
	}
	token element {
		<key> ': ' <value> <[\n\t]>*
	}
	token key {
		\w+	
	}
	token value {
		<-[\n]>+	
	}
}
say t_table.parse($string);
