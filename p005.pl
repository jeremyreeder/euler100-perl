#!/usr/bin/env perl
use Modern::Perl '2020';

# Problem 5: What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

sub isDivisibleByOneThruTwenty {
	my ($n) = @_;
	for my $d (1..20) {
		if ($n % $d != 0) { return 0 }
	}
	1;
}

sub answer {
	my $x = 1;
	while (!isDivisibleByOneThruTwenty($x)) { $x++ }
	$x;
}

say answer;