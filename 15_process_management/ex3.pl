#!/usr/bin/perl
# Perl v5.36.0 on macOS Ventura 13.0.1
# Learning Perl 8th Edition
# Author: Ronald Rios
# Chapter 15: Process management
# Exercise 3: Day of the week

use feature 'say';
use warnings;
use strict;

say 'Exercise 15.3';

if (`date` =~ /\AS/){
    say 'Go play'
}
else {
    say 'Get to work'
}

