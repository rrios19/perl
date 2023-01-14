#!/usr/bin/perl
# Perl v5.36.0 on macOS Ventura 13.0.1
# Learning Perl 8th Edition
# Author: Ronald Rios
# Chapter 8: Matching with regular expressions
# Exercise 2: Ending with the letter 'a'

use feature 'say';
use warnings;
use strict;

say 'Exercise 8.2';

open LINES,'<','lines' or die "Couldn't open file, $!";

while (<LINES>){
    chomp;
    if (/a\b/){ # Word-boundary anchor
        say "Matched: |$`<$&>$'|"
    }
    else{
        say "No match: |$_|"
    }
}

close LINES

