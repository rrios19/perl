#!/usr/bin/perl
# Perl v5.36.0 on macOS Ventura 13.0.1
# Learning Perl 8th Edition
# Author: Ronald Rios
# Chapter 11: Perl modules
# Exercise 1: Print modules

use feature 'say';
use warnings;
use strict;
use Module::CoreList;

say 'Exercise 11.1';

my %modules = %{$Module::CoreList::version{5.036}};

say join "\n", keys %modules

