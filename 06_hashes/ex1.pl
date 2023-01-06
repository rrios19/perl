#!/usr/bin/perl
# Perl v5.36.0 on macOS Ventura 13.0.1
# Learning Perl 8th Edition
# Author: Ronald Rios
# Chapter 6: Hashes
# Exercise 1: Family names

use v5.10;
use warnings;
use strict;

print "Exercise 6.1\nEnter a name: ";
chomp(my $key = <STDIN>);

my %family_name = (
    fred => 'flintstone',
    barney => 'rubble',
    wilma => 'flintstone'    
);

if (exists $family_name{$key}){
    say "That's $key $family_name{$key}"
}
else{
    say "That name doesn't exists or it's misspelled"
}

