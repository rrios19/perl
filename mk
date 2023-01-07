#!/usr/bin/perl
# Perl v5.36.0 on macOS Ventura 13.0.1
# Learning Perl 8th Edition
# Author: Ronald Rios
# Description: Making my life easier

use feature 'say';
use warnings;
use strict;

# Arguments
my ($chapter, $name) = @ARGV;

my $path;
my @name = split(/ /, $name);
foreach (@name){
    $path .= "${_}_"    
}
$path = "${chapter}_".substr($path, 0, length($path)-1)."/";

my $num = $chapter + 0; 
system("mkdir $path");

open INPUT, '<', 'base';
open OUTPUT, '>>', "${path}ex1.pl";

$name = ucfirst $name;
foreach (<INPUT>){
    chomp;
    if (/Chapter/){$_ .= " ${num}: $name"}
    if (/say '/){$_ .= " ${num}.1';"}
    say OUTPUT $_
}

