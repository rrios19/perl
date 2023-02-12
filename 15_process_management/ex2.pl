#!/usr/bin/perl
# Perl v5.36.0 on macOS Ventura 13.0.1
# Learning Perl 8th Edition
# Author: Ronald Rios
# Chapter 15: Process management
# Exercise 2: ls -l command

use feature 'say';
use warnings;
use strict;

say 'Exercise 15.2';

open STDOUT,'>','ls.out' or die "Can't write to ls.out: $!";
open STDERR,'>','ls.err' or die "Can't write to ls.err: $!";

chdir '/' or die "Can't chdir to system's root directory: $!";

exec 'ls','-l' or die "Can't exec 'ls -l': $!";

