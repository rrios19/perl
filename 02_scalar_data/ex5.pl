#!/usr/bin/perl
# Perl v5.36.0 on macOS Ventura 13.0.1
# Learning Perl 8th Edition
# Author: Ronald Rios
# Chapter 2: Scalar data
# Exercise 5: Using x operator

use v5.10;
use warnings;

print "Exercise 2.5\nEnter a string = ";
$string = <STDIN>;
print 'Enter a number = ';
chomp($number = <STDIN>);

chomp($result = $string x $number);
say "The result is:\n".$result 

