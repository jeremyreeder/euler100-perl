#!/usr/bin/env perl
use Modern::Perl '2020';
use Math::Prime::Util qw(nth_prime);

# Problem 7: What is the 10,001st prime number?

my $answer = nth_prime(10_001);
say $answer;