#!/usr/bin/perl
# Perl v5.36.0 on macOS Ventura 13.0.1
# Learning Perl 8th Edition
# Author: Ronald Rios
# Chapter 12: File tests
# Exercise 1: Attributes of many files

use feature 'say';
use warnings;
use strict;

say 'Exercise 12.1';

foreach (@ARGV){
    
    say $_,test($_)
}

sub test{
    return " doesn't exist" unless -e $_;
    
    my @mod;
    push @mod, 'readable'   if -r _;
    push @mod, 'writable'   if -w _;
    push @mod, 'executable' if -x _;

    return ' exists' unless @mod;
    
    my $m = ' is '.join ', ', @mod;
    $m =~ s/, (\w+)\Z/ and $1/; 
$m    
}

