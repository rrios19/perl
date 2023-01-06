#!/usr/bin/perl
# Perl v5.36.0 on macOS Ventura 13.0.1
# Learning Perl 8th Edition
# Author: Ronald Rios
# Description: Making my life easier

use feature 'say';
use warnings;
use strict;

print 'Enter the chapter: ';
chomp(my $chapter = <STDIN>);
print 'Enter the name: ';
chomp(my $name = <STDIN>);

my $path;
my @name = split(/ /, $name);
foreach (@name){
    $path .= "${_}_"    
}
$path = "${chapter}_".substr($path, 0, length($path)-1)."/";

system("mkdir $path");

open INPUT, '<', 'base';
open OUTPUT, '>>', "${path}ex1.pl";

$name = ucfirst $name;
foreach (<INPUT>){
    chomp;
    if (/Chapter/){$_ .= " ${chapter}: $name"}
    if (/say '/){$_ .= " ${chapter}.1';"}
    say OUTPUT $_
}

