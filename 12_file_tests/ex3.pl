#!/usr/bin/perl
# Perl v5.36.0 on macOS Ventura 13.0.1
# Learning Perl 8th Edition
# Author: Ronald Rios
# Chapter 12: File tests
# Exercise 3: Test operators

use feature 'say';
use warnings;
use strict;

say 'Exercise 12.3';

die "No file names supplied\n" unless @ARGV;
foreach (@ARGV){ 
   say "$_ is readable and writable" if -r -w -o  
}

