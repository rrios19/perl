#!/usr/bin/perl
# Perl v5.36.0 on macOS Ventura 13.0.1
# Learning Perl 8th Edition
# Author: Ronald Rios
# Chapter 16: Some advanced perl techniques
# Exercise 3: Report of the access and modification time in the cwd 

use feature 'say';
use warnings;
use strict;
use List::Util qw{maxstr};

say 'Exercise 16.3';

my @FH = <*>;
my $max = length maxstr(@FH);

foreach my $file (@FH){
    my @num = map {(localtime($_))[5,4,3]} (stat $file)[8,9];
    $num[0] += 1900;    $num[3] += 1900;
    $num[1] += 1;       $num[4] += 1;
    printf "%-${max}s %4d-%02d-%2d %4d-%02d-%2d\n",$file,@num
}

