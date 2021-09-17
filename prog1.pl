#!/usr/local/bin/perl
# prog1.pl
use warnings;
use strict;
use utf8;

# You are given an array of positive integers, such that all the numbers appear even number of times except one number. Write a script to find that integer.
# (1, 5, 33, 5, 20, 7, 5, 1, 20, 33, 7, 5, 7)

#my @input_arr = (1, 5, 33, 5, 20, 7, 5, 1, 20, 33, 7, 5, 7);
my @input_arr = (2, 5, 4, 4, 5, 5, 2);
my %hash = ();

foreach my $num ( @input_arr ) {

	if ( !exists $hash{$num} ) {

		$hash{$num} = 1;
	} else {

		delete $hash{$num};
	}
}

my @arr = keys %hash;
my $res = $arr[0];
print "$res\n";

