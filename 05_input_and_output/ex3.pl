#!/usr/bin/perl
# Perl v5.36.0 on macOS Ventura 13.0.1
# Learning Perl 8th Edition
# Author: Ronald Rios
# Chapter 5: Input and output
# Exercise 3: Right-justified, character column of changeable width

use v5.10;
use warnings;

print "Exercise 5.3\nWhat column width would you like? ";
chomp ($width = <STDIN>);

say 'Enter some lines:';
chomp (@lines = <STDIN>);

say '1234567890' x ($width/10) , (1 .. (reverse $width)/10);

foreach (@lines){
    printf "%*s\n", $width, $_
}

