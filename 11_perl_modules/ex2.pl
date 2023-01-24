#!/usr/bin/perl
# Perl v5.36.0 on macOS Ventura 13.0.1
# Learning Perl 8th Edition
# Author: Ronald Rios
# Chapter 11: Perl modules
# Exercise 2: Interval between two dates 

use feature 'say';
use warnings;
use strict;
use Time::Moment;

say 'Exercise 11.2';

my ($year,$month) = @ARGV;

my $old = Time::Moment->new(year => $year, month => $month);
my $now = Time::Moment->now;

my $dy = $old->delta_years($now);
my $dm = $old->delta_months($now)%12;

printf "%d years and %d months\n",$dy,$dm

