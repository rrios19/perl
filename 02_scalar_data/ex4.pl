#!/usr/bin/perl
# Perl v5.36.0 on macOS Ventura 13.0.1
# Learning Perl 8th Edition
# Author: Ronald Rios
# Chapter 2: Scalar data
# Exercise 4: Product of two numbers

use v5.10;
use warnings;

print "Exercise 2.4\nFirst number = ";
chomp($n1 = <STDIN>);

print 'Second number = ';
chomp($n2 = <STDIN>);

say 'Result = '.$n1*$n2

