#!/usr/bin/perl
# Perl v5.36.0 on macOS Ventura 13.0.1
# Learning Perl 8th Edition
# Author: Ronald Rios
# Chapter 12: File tests
# Exercise 2: The oldest file

use feature 'say';
use warnings;
use strict;

say 'Exercise 12.2';

die "No file names supplied\n" unless @ARGV;
my $file = shift @ARGV;
my $age = -M $file // 0;

foreach (@ARGV){
    ($file, $age) = ($_, -M $_) if -M > $age
}

printf "The oldest file was %s, and it was %.2f days old\n",$file,$age

