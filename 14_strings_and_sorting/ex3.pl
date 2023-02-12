#!/usr/bin/perl
# Perl v5.36.0 on macOS Ventura 13.0.1
# Learning Perl 8th Edition
# Author: Ronald Rios
# Chapter 14: Strings and sorting
# Exercise 3: Find a substring

use feature 'say';
use warnings;
use strict;

say 'Exercise 14.3';

print 'Enter a string: ';
chomp(my $string = <STDIN>);
print 'Enter a substring: ';
chomp(my $sub = <STDIN>);

my @where = ();
my $where = -1;
while (1){
    $where = index($string, $sub, $where+1);
    last if $where == -1;
    push @where, $where
}

say "Positions are @where"

