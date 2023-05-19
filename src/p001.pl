#!/usr/bin/env perl
use Modern::Perl '2020';
use List::Util qw(sum);
use List::MoreUtils qw(uniq);

# Problem 1: Find the sum of all the multiples of 3 or 5 below 1000.

sub multiples {
	my ($n, $ceiling) = @_;
	map { $n * $_ } 1..(($ceiling - 1) / $n);
}

my $ceiling = 1_000;
my $answer = sum(uniq((multiples(3, $ceiling), multiples(5, $ceiling))));
say $answer;