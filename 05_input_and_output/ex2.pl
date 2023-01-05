#!/usr/bin/perl
# Perl v5.36.0 on macOS Ventura 13.0.1
# Learning Perl 8th Edition
# Author: Ronald Rios
# Chapter 5: Input and output
# Exercise 2: Right-justified, 20-character column

use v5.10;
use warnings;

say "Exercise 5.2\nEnter some lines:";

chomp (@lines = <STDIN>);
$format = "%20s\n" x @lines;

say '1234567890' x 2;
printf $format, @lines

