#!/usr/bin/perl
# Perl v5.36.0 on macOS Ventura 13.0.1
# Learning Perl 8th Edition
# Author: Ronald Rios
# Chapter 9: Processing text with regular expressions
# Exercise 1: Match three consecutive copies

use feature 'say';
use warnings;
use strict;

say 'Exercise 9.1';

my $what = 'fred|barney';

while (<>){
    if (/(?:$what){3}/){
        print "Matched: $_"
    }
}

