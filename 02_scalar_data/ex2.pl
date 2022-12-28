#!/usr/bin/perl
# Perl v5.36.0 on macOS Ventura 13.0.1
# Learning Perl 8th Edition
# Author: Ronald Rios
# Chapter 2: Scalar data
# Exercise 2: Circumference of a circle

use v5.10;
use warnings;

$pi = 3.141592654;
print "Exercise 2.2\nWhat is the radius? ";
$radius = <STDIN>;
chomp($radius);
$circ = 2*$pi*$radius;
say "The circumference of a circle of radius $radius is $circ"

