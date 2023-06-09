#!/usr/bin/env perl
use Modern::Perl '2020';

# Problem 2: By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

sub fibonacci {
	my @sequence = (0, 1);
	sub {
		my $item = shift;
		if ($item >= @sequence) {
			for my $calc (@sequence .. $item) {
				$sequence[$calc] = $sequence[$calc - 2] + $sequence[$calc - 1];
			}
		}
		$sequence[$item];
	}
}

sub answer {
	my $i = 0;
	my $n = 0;
	my $sum = 0;
	do {
		$sum += $n;
		$n = fibonacci->($i);
		$i += 3; # Every 3rd element in the sequence is even; all others are odd.
	} while ($n <= 4_000_000);
	$sum;
}

say answer;