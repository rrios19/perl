#!/usr/bin/perl
# Perl v5.36.0 on macOS Ventura 13.0.1
# Learning Perl 8th Edition
# Author: Ronald Rios
# Chapter 10: More control structures
# Exercise 3: ENV Hash

use v5.10;
use warnings;
use strict;

say "Exercise 10.3";

$ENV{ZERO} = 0;
$ENV{EMPTY} = '';
$ENV{UNDEFINED} = undef;

my $max = 0;

foreach (keys %ENV){
    $max = length if length > $max
}

foreach (sort keys %ENV){
    printf "%-${max}s %s\n", $_, $ENV{$_} // '(undefined value)'
}

