#!/usr/bin/perl
# Perl v5.36.0 on macOS Ventura 13.0.1
# Learning Perl 8th Edition
# Author: Ronald Rios
# Chapter 1: Introduction
# Exercise 3: Perldoc

@lines = `perldoc -u -f atan2`;
foreach (@lines){
    s/\w<(.+?)>/\U$1/g;
    print;
}

