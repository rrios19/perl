#!/usr/bin/perl
# Perl v5.36.0 on macOS Ventura 13.0.1
# Learning Perl 8th Edition
# Author: Ronald Rios
# Chapter 8: Matching with regular expressions
# Exercise 1: Pattern test program

use feature 'say';
use warnings;
use strict;

say 'Exercise 8.1';

while (<>){
    chomp;
    if (/match/){
        say "Matched: |$`<$&>$'|"
    }
    else{
        say "No match: |$_|"
    }
}

