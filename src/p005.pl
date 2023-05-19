#!/usr/bin/env perl
use Modern::Perl '2020';
use List::Util qw(product);
use Math::Prime::Util qw(primes);

# Problem 5: What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

sub answer {
	my ($max_factor) = @_;
	my @primes = @{primes($max_factor)};
	my @greatest_power_of_each_prime = map { $_ ** int(log($max_factor) / log($_)) } @primes;
	product(@greatest_power_of_each_prime);
}

say answer(20);