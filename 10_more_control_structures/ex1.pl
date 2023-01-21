#!/usr/bin/perl
# Perl v5.36.0 on macOS Ventura 13.0.1
# Learning Perl 8th Edition
# Author: Ronald Rios
# Chapter 10: More control structures
# Exercise 1: Guess a secret number

use feature 'say';
use warnings;
use strict;

say 'Exercise 10.1';

my $guess = int(1 + rand 100);

{
    print "Enter a number form 1 to 100: ";
    $_ = <STDIN>;
    if (/exit|quit|\A\s*\Z/i){
        say "Sorry you gave up, the secret number was $guess";
        last
    }
    chomp;
    say "Too low, try again" if $_ < $guess;
    say "Too high, try again" if $_ > $guess;
    if ($_ == $guess){
        say 'That was it!';
        last
    }
    redo
}

