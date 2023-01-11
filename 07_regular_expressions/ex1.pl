#!/usr/bin/perl
# Perl v5.36.0 on macOS Ventura 13.0.1
# Learning Perl 8th Edition
# Author: Ronald Rios
# Chapter 7: Regular expressions
# Exercise 1: Mentions of 'fred'

use feature 'say';
use warnings;
use strict;

say 'Exercise 7.1';

open LINES, '<', 'lines' or die "Couldn't open file, $!";

foreach (<LINES>){
    if (/fred/) {print}
}

close LINES

