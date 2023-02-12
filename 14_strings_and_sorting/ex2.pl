#!/usr/bin/perl
# Perl v5.36.0 on macOS Ventura 13.0.1
# Learning Perl 8th Edition
# Author: Ronald Rios
# Chapter 14: Strings and sorting
# Exercise 2: Sort by last name

use feature 'say';
use warnings;
use strict;

say 'Exercise 14.2';

my %last_name = qw{ fred flintstone 
                    Wilma Flintstone 
                    Barney Rubble 
                    betty rubble 
                    Bamm-Bamm Rubble 
                    PEBBLES FLINTSTONE};

sub by_name{
    "\F$last_name{$a}" cmp "\F$last_name{$b}" or
    "\F$a" cmp "\F$b"
}

foreach (sort by_name keys %last_name){
    say "$_ $last_name{$_}"
}

