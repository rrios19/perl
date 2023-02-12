#!/usr/bin/perl
# Perl v5.36.0 on macOS Ventura 13.0.1
# Learning Perl 8th Edition
# Author: Ronald Rios
# Chapter 14: Strings and sorting
# Exercise 1: Sort numbers

use feature 'say';
use warnings;
use strict;

say 'Exercise 14.1';

my @data;
while(<>){
    push @data, split;
}

my $max = 0;
foreach (@data){
    $max = length if length > $max
}

foreach (sort {$a <=> $b} @data){
    printf "%${max}g\n", $_
}

