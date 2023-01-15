#!/usr/bin/perl
# Perl v5.36.0 on macOS Ventura 13.0.1
# Learning Perl 8th Edition
# Author: Ronald Rios
# Chapter 9: Processing text with regular expressions
# Exercise 2: Change from fred to Larry

use feature 'say';
use warnings;
use strict;

say 'Exercise 9.2';

my ($file) = @ARGV;
if (!defined $file){die "No arguments,"}
open FILE,'<',$file or die "Couldn't open file, $!";

$file =~ s/(\.\w+)?\z/.out/;
open OUT,'>',$file or die "Couldn't open file, $!";

while (<FILE>){
    s/fred/Larry/gi;
    print OUT $_
}

