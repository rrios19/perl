#!/usr/bin/perl
# Perl v5.36.0 on macOS Ventura 13.0.1
# Learning Perl 8th Edition
# Author: Ronald Rios
# Chapter 7: Regular expressions
# Exercise 4: Capitalized word

use feature 'say';
use warnings;
use strict;

say 'Exercise 7.4';

open LINES, '<', 'lines' or die "Couldn't open file, $!";

foreach (<LINES>){
    if (/[A-Z][a-z]+/) {print}
}

close LINES

