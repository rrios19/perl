#!/usr/bin/perl
# Perl v5.36.0 on macOS Ventura 13.0.1
# Learning Perl 8th Edition
# Author: Ronald Rios
# Chapter 16: Some advanced perl techniques
# Exercise 1: Match strings

use feature 'say';
use warnings;
use strict;

say 'Exercise 16.1';

my $filename = 'sample_text';
open FH,'<',$filename or die "Can't open '$filename': $!";
my @lines = <FH>;

{
print 'Enter a pattern: ';
chomp(my $pattern = <STDIN>);
exit if $pattern =~ /\A\s*\z/;

my @matches = eval{grep /$pattern/,@lines};

if ($@) {
    print "Error was $@";
    redo
}
 
say 'There were ',@matches*1," matching string:\n",map "$_",@matches; 
redo
}

