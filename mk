#!/usr/bin/perl
# Perl v5.36.0 on macOS Ventura 13.0.1
# Learning Perl 8th Edition
# Author: Ronald Rios
# Description: Shortcut

use warnings;
use strict;

my ($chapter, $name) = @ARGV;

my $path = lc $name;
my $num = int $chapter;
$name = ucfirst lc $name;
$path =~ s/\b\s\b/_/g;
$path =~ s/\A/${chapter}_/;

mkdir $path, 0755 or die "Can't make '$path' directory: $!";

open INPUT, '<', 'base' or die "Can't open 'base': $!";
open OUTPUT, '>>', "${path}/ex1.pl" or die "Can't open 'ex1': $!";
my @lines = <INPUT>;

foreach (@lines){
    s/(Chapter)/$1 $num: $name/;
    s/('Exercise)/$1 $num\.1';/;
    print OUTPUT
}

