#!/usr/bin/perl
# Perl v5.36.0 on macOS Ventura 13.0.1
# Learning Perl 8th Edition
# Author: Ronald Rios
# Chapter 6: Hashes
# Exercise 2: Count words

use v5.10;
use warnings;
use strict;

say "Exercise 6.2\nEnter some lines:";

my %count;
my $max = 8;
foreach (<STDIN>){
    chomp;
    $count{$_} += 1;
    if (length() > $max) {$max = length}
}

my $format = "-"x($max+5)."\n%*s%s\n"."-"x($max+5)."\n";
printf $format, -$max, 'Words', 'Count';
foreach (sort keys %count){
    printf "%*s%s\n", -2-$max, $_, $count{$_} 
}

