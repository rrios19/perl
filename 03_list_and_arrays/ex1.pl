#!/usr/bin/perl
# Perl v5.36.0 on macOS Ventura 13.0.1
# Learning Perl 8th Edition
# Author: Ronald Rios
# Chapter 3: List and arrays
# Exercise 1: Reverse input lines

use v5.10;
use warnings;

say "Exercise 3.1\nEnter some lines and then press CTRL+D:";
@lines = <STDIN>;
@reverse_lines = reverse(@lines);
print @reverse_lines

