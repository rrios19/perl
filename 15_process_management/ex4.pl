#!/usr/bin/perl
# Perl v5.36.0 on macOS Ventura 13.0.1
# Learning Perl 8th Edition
# Author: Ronald Rios
# Chapter 15: Process management
# Exercise 4: Catch signals

use v5.10;
use warnings;
use strict;

say 'Exercise 15.4';

sub hup_handler{
    state $n = 0;
    say 'Caught HUP: ',++$n
}
sub usr1_handler{
    state $n;
    say 'Caught USR1: ',++$n
}
sub usr2_handler{
    state $n;
    say 'Caught USR2: ',++$n
}
sub int_handler{
    say 'Caught INT: Exiting';
    exit
}

say "I am $$";

foreach (qw{int hup usr1 usr2}){
    $SIG{uc $_} = "${_}_handler";
}

sleep while 1;

# kill -HUP 12345
# perl -e 'kill HUP => 12345'

