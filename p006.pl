#!/usr/bin/env perl
use Modern::Perl '2020';
use List::Util qw(sum);

sub sum_square_difference {
	my @numbers = @_;
	my $sum_of_squares = sum(map { $_ ** 2 } @numbers);
	my $square_of_sum = sum(@numbers) ** 2;
	$square_of_sum - $sum_of_squares;
}

my $answer = sum_square_difference(1..100);
say $answer;