#!/usr/bin/perl
# Perl v5.36.0 on macOS Ventura 13.0.1
# Learning Perl 8th Edition
# Author: Ronald Rios
# Chapter 6: Hashes
# Exercise 3: ENV Hash

use v5.10;
use warnings;
use strict;

say "Exercise 6.3";

my $max = 0;

foreach (keys %ENV){
    $max = length if length > $max
}

foreach (sort keys %ENV){
    printf "%-${max}s %s\n", $_, $ENV{$_}
}

