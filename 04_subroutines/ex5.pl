#!/usr/bin/perl
# Perl v5.36.0 on macOS Ventura 13.0.1
# Learning Perl 8th Edition
# Author: Ronald Rios
# Chapter 4: Subroutines
# Exercise 5: People previosly greeted

use v5.10;
use warnings;

sub greet {
    state @last;
    $name = shift;
    if (@last) {
        say "Hi $name! I've seen: @last"
    }
    else {
        say "Hi $name! You are the first one here!"
    }
    push @last, $name 
}

say "Exercise 4.5";
greet("Fred");
greet("Barney");
greet("Wilma");
greet("Betty")

