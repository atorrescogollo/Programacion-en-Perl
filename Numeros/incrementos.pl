#!/usr/bin/perl

use feature 'say';

my $var = 5;	# var = 5
$var += 1;

say "var++ = ", $var++;	# Devuelve e incrementa (6)
say "++var = ", ++$var;	# Incrementa y devuelve (8)
say "var-- = ", $var--;	# Devuelve y decrementa	(8)
say "--var = ", --$var;	# Decrementa y devuelve	(6)

