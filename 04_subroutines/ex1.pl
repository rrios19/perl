#!/usr/bin/perl
# Perl v5.36.0 on macOS Ventura 13.0.1
# Learning Perl 8th Edition
# Author: Ronald Rios
# Chapter 4: Subroutines
# Exercise 1: Return the total of an array

use v5.10;
use warnings;

sub total {
    my $sum;
    foreach (@_) {$sum += $_}    
$sum
}

@numbers = qw{1 3 5 7 9};
say "Exercise 4.1\nThe total of @numbers is ".total(@numbers);

say "Enter some numbers on separate lines:";
$num_total = total(<STDIN>);
say "The total of those numbers is $num_total";

