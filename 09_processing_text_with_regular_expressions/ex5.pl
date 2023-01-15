#!/usr/bin/perl
# Perl v5.36.0 on macOS Ventura 13.0.1
# Learning Perl 8th Edition
# Author: Ronald Rios
# Chapter 9: Processing text with regular expressions
# Exercise 5: Add copyright line

use feature 'say';
use warnings;
use strict;

say 'Exercise 9.5';

my %files;
foreach (@ARGV){
    $files{$_} = 1
}
while (<>){
    if (/## Copyright/){
        delete $files{$ARGV};
    }
}
@ARGV = keys %files;
if (@ARGV){
    $^I = '.bak';
    while (<>){
        if (/\A#!/){
            $_ .= "## Copyright (C) 20xx by Yours Truly\n"
        }
        print
    }
}

