#!/usr/bin/perl
# Perl v5.36.0 on macOS Ventura 13.0.1
# Learning Perl 8th Edition
# Author: Ronald Rios
# Chapter 9: Processing text with regular expressions
# Exercise 3: Change every fred and every wilma

use feature 'say';
use warnings;
use strict;

say 'Exercise 9.3';

my ($file) = @ARGV;
if (!defined $file){die "No arguments,"}
open FILE,'<',$file or die "Couldn't open file, $!";

$file =~ s/(\.\w+)?\z/.out/;
open OUT,'>',$file or die "Couldn't open file, $!";

my %change = qw{fred Wilma wilma Fred};
while (<FILE>){
    s/(fred)|(wilma)/$change{lc($&)}/gi;
    print OUT $_
}

