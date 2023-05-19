#!/usr/bin/env perl
use Modern::Perl '2020';

# Problem 9: There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

sub pythagorean_triplets {
	my @results = ();
	for my $x (1 .. 1_000) {
		for my $y ($x + 1 .. 1_000 - $x) {
			for my $z ($y + 1 .. 1_000 - $x - $y) {
				if ($x ** 2 + $y ** 2 == $z ** 2) {
					my @triplet = ($x, $y, $z);
					@results = (@results, \@triplet);
				}
			}
		}
	}
	@results;
}

sub answer {
	for my $triplet (pythagorean_triplets) {
		my ($x, $y, $z) = @$triplet;
		if ($x + $y + $z == 1_000) {
			return $x * $y * $z;
		}
	}
	die "No solution found."
}

say answer;