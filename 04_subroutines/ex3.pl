#!/usr/bin/perl
# Perl v5.36.0 on macOS Ventura 13.0.1
# Learning Perl 8th Edition
# Author: Ronald Rios
# Chapter 4: Subroutines
# Exercise 3: Return the values above the average

use v5.10;
use warnings;

sub total {
    my $sum = 0;
    foreach (@_) {$sum += $_}    
$sum
}

sub mean {if (@_) {&total(@_)/($#_ + 1)}}

sub above_average {
    my $mean = &mean(@_);
    my @above;
    foreach (@_){
        if ($_ > $mean) {push(@above, $_)}
    }
@above
}

say "Exercise 4.3";
my @fred = above_average(1..10);
print "Above average @fred\n";
my @barney = above_average(100,1..10);
print "Above average @barney\n";

