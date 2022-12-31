#!/usr/bin/perl
# Perl v5.36.0 on macOS Ventura 13.0.1
# Learning Perl 8th Edition
# Author: Ronald Rios
# Chapter 4: Subroutines
# Exercise 2: Sum from 1 to 1000

use v5.10;
use warnings;

@num = (1..1000);
say "Exercise 4.2\nThe total from $num[0] to $num[-1] is ".total(@num);

sub total {
    my $sum;
    foreach (@_) {$sum += $_}    
$sum
}

