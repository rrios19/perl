#!/usr/bin/perl
# Perl v5.36.0 on macOS Ventura 13.0.1
# Learning Perl 8th Edition
# Author: Ronald Rios
# Chapter 13: Directory operations
# Exercise 8: Show symbolic links

use feature 'say';
use warnings;
use strict;

say 'Exercise 13.8';

foreach (<.* *>){
    say "$_ -> ", readlink $_ if -l
}

