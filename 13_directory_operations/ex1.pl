#!/usr/bin/perl
# Perl v5.36.0 on macOS Ventura 13.0.1
# Learning Perl 8th Edition
# Author: Ronald Rios
# Chapter 13: Directory operations
# Exercise 1: Change working directory

use feature 'say';
use warnings;
use strict;

say 'Exercise 13.1';

print 'Which directory? ';
chomp(my $dir = <STDIN>);

if ($dir =~ /\A\s*\Z/){
    chdir or die "Can't chdir to home: $!"
}
else{
    chdir $dir or die "Can't chdir to $dir: $!"
}

foreach (<*>){
    say $_
}

