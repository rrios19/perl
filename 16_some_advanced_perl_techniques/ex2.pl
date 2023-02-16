#!/usr/bin/perl
# Perl v5.36.0 on macOS Ventura 13.0.1
# Learning Perl 8th Edition
# Author: Ronald Rios
# Chapter 16: Some advanced perl techniques
# Exercise 2: Report of the access and modification time in the cwd 

use feature 'say';
use warnings;
use strict;
use List::Util qw{maxstr};

say 'Exercise 16.2';

my @FH = <*>;
my $max = length maxstr(@FH);

foreach (@FH){
    my ($atime,$mtime) = (stat)[8,9];
    printf "%-${max}s %10d %10d\n",$_,$atime,$mtime
}

