#!/usr/bin/env perl
use Modern::Perl '2020';
use List::Util;
use Math::Prime::Util qw(forprimes);

# Problem 3: What is the largest prime factor of the number 600851475143?

sub largestPrimeFactor {
	my ($n) = @_;
	my $x = $n;
	my $result = 1;
	while ($x > $result) {
		forprimes {
			if ($x % $_ == 0) {
				$x /= $_;
				$result = $_;
			}
		} int(sqrt($x));
	}
	$result;
}

my $answer = largestPrimeFactor(600_851_475_143);
say $answer;