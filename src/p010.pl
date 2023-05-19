#!/usr/bin/env perl
use Modern::Perl '2020';
use List::Util qw(sum);
use Math::Prime::Util qw(primes);

# Problem 10: Find the sum of all the primes below two million.

my $answer = sum(@{primes(1_999_999)});
say $answer;