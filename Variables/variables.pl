#!/usr/bin/perl

use feature "say";

# Escalares
my $nombre = 'Alvaro';
my ($edad, $pais) = (22, 'España');

my $info = "$nombre vive en \"$pais\" y tiene $edad años.";
say $info;
$info = qq{$nombre vive en "$pais" y tiene $edad años.};
say $info;

