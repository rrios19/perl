#Chapter 2: Scalar data
#!/usr/bin/perl
use v5.10;
use utf8;

#Using underscores
print "Using underscores: ";
$number = 61_298_040_283_768;
say $number;

#Octal
print "Octal: ";
$number = 0377;
print "$number ";
$number = 0o377;
print "or $number\n";

#Hexadecimal
print "Hexadecimal: ";
$number = 0xff;
say $number;

#Binary
print "Binary: ";
$number = 0b1111_1111;
say $number;

#Decimal
print "Decimal: ";
$number = 255;
say $number;

#Floating-point literals
print "Floating-point literals:\n";
$number = -1.2E-23 + 1.2e-23;
say "-1.2E-23 + 1.2e-23 = ".$number;

$number = 0x1f.0p3 - (0b0001_1111)*(2*2*2);
say "0x1f.0p3 - (0b0001_1111)*(2*2*2) = ".$number;

#Numeric operators
print "Numeric operators:\n";
say 2 + 3;
say 5.1 - 2.4;
say 3 * 12;
say 14 / 2;
say 10.2 / 0.3;
say 10 / 3;
say 10 % 3;
say 10.5 % 3.2;
say -10 % 3;
say 2 ** 3;

#Single-quoted string literals
print "Single-quoted string literals:\n";
say 'Hello world';
say '\\Don\'t worry\\';
say 'Hello\nthere'; 
say 'Hello
there';

#Double-quoted string literals
print "Doyble-quoted string literals:\n";
print "\uhello world\n";

#String operators
print "String operators:\n";
print "Hello"."world\n";
print "Hello".' '."world"."\n";
print "\Uhello\E" x 3 . "\n";
say 5 x 4.8;
say 4.8 x 5;

#Automatic conversion between numbers and string


