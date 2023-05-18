#!/usr/bin/env perl
use Modern::Perl '2020';

# Problem 4: Find the largest palindrome made from the product of two 3-digit numbers.

sub answer {
	my $max_z = 0;
	for my $x (100..999) {
		for my $y (100..999) {
			my $z = $x * $y;
			if ($z > $max_z && (scalar reverse $z) eq $z) {
				$max_z = $z
			}
		}
	}
	$max_z;
}

say answer;