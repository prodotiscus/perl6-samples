#!/usr/bin/perl6
my $string = '</td></tr></td></tr></table><script type="text/javascript">s9n4=1701;c3f6=4814;l2b2=5940;o5p6=7446;n4q7=3290;q7i9=8025;v2z6=8717;g7d4=7552;y5c3=9963;h8k1=9372;n4t0c3=0^s9n4;b2e5b2=1^c3f6;q7x4z6=2^l2b2;s9a1h8=3^o5p6;l2l2i9=4^n4q7;k1y5f6=5^q7i9;h8c3w3=6^v2z6;t0k1j0=7^g7d4;a1j0p6=8^y5c3;m3n4u1=9^h8k1;</script><table width="100%" border=0 cellspacing=0 cellpadding=2>';
grammar obfusc {
	rule TOP {
		<start> <content>+ <finish>
	}
	rule start {
		'</td></tr></td></tr></table><script type="text/javascript">'
	}
	rule content {
		<variable> \h* '=' \h* <value> ';'
	}
	token variable {
		[ \w \d ] +	
	}
	token value {
		[ \w \d \^ ] +
	}
	rule finish {
		'</script><table width="100%" border=0 cellspacing=0 cellpadding=2>'	
	}
}
say obfusc.parse($string);
