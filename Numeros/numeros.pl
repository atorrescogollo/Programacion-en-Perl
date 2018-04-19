#!/usr/bin/perl

#	%c	:	Character
#	%s	:	String
#	%d	:	Decimal
#	%u	:	Unsigned Integer
#	%f	:	Floating Point (Decimal Notation)
#	%e	:	Floating Point (Scientific Notation)


my $int = 12345675;
my $float = .1000000001;

printf("%u\n", $int+5);			# output: 12345680
printf("%.3f\n", $float+5.01);		# output: 5.110

my ($x, $y) = (1, 2);
($x, $y) = ($y, $x);			# Permutacion de valores
printf("(x,y)=(%u,%u)\n", $x, $y);	# output: (x,y)=(2,1)


use feature "say";

say "5 + 4 = ",5+4;	# Suma
say "5 - 4 = ",5-4;	# Resta
say "5 * 4 = ",5*4;	# Multiplicacion
say "5 / 4 = ",5/4;	# Division
say "5 % 4 = ",5%4;	# Resto
say "5 ** 4 = ",5**4;	# Potencia (5^4)

