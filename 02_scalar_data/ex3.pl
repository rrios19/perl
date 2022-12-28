#!/usr/bin/perl
# Perl v5.36.0 on macOS Ventura 13.0.1
# Learning Perl 8th Edition
# Author: Ronald Rios
# Chapter 2: Scalar data
# Exercise 3: Circumference of a circle

use v5.10;
use warnings;

$pi = 3.141592654;
print "Exercise 2.3\nRadius = ";
chomp($radius = <STDIN>);

if ($radius<0){
    $circ = 0
}
else {
    $circ = 2*$pi*$radius
}
say 'The circumference of a circle of radius '.$radius.' is '.$circ

