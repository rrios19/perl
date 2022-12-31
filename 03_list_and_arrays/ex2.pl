#!/usr/bin/perl
# Perl v5.36.0 on macOS Ventura 13.0.1
# Learning Perl 8th Edition
# Author: Ronald Rios
# Chapter 3: List and arrays
# Exercise 2: Print using index

use v5.10;
use warnings;

@names = qw/fred betty barney dino wilma pebbles bamm-bamm/;

say "Exercise 3.2\nEnter some numbers from 1 to ",
scalar @names," and then press CTRL+D:";

chomp(@index = <STDIN>);
foreach (@index){
    print "$names[$_ - 1]\n"
}

