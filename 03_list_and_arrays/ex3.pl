#!/usr/bin/perl
# Perl v5.36.0 on macOS Ventura 13.0.1
# Learning Perl 8th Edition
# Author: Ronald Rios
# Chapter 3: List and arrays
# Exercise 3: Sort strings

use v5.10;
use warnings;

say "Exercise 3.2\nEnter the names: ";
chomp(@names = <STDIN>);

@names = sort @names;

say "@names"

