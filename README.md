# Programacion en Perl
Guia de aprendizaje sobre el lenguaje de programacion Perl. Referencia: https://youtu.be/WEghIXs8F6c

# Perl
Perl es un lenguaje de programación diseñado por Larry Wall en 1987. Perl toma características del lenguaje C, del lenguaje interpretado bourne shell (sh), AWK, sed, Lisp y, en un grado inferior, de muchos otros lenguajes de programación.

Estructuralmente, Perl está basado en un estilo de bloques como los del C o AWK, y fue ampliamente adoptado por su destreza en el procesado de texto y no tener ninguna de las limitaciones de los otros lenguajes de script.

#### Version 
    alvaro@xubuntu-pc:~/Programacion-en-Perl$ perl -v
    
    This is perl 5, version 22, subversion 1 (v5.22.1) built for x86_64-linux-gnu-thread-multi
    (with 68 registered patches, see perl -V for more detail)
    
    Copyright 1987-2015, Larry Wall
    
    Perl may be copied only under the terms of either the Artistic License or the
    GNU General Public License, which may be found in the Perl 5 source kit.
    
    Complete documentation for Perl, including FAQ lists, should be found on
    this system using "man perl" or "perldoc perl".  If you have access to the
    Internet, point your browser at http://www.perl.org/, the Perl Home Page.
  
## 'Hola Mundo'
Vamos a elaborar un 'Hola Mundo' con las distintas formas que nos permite Perl. En el futuro, usaremos el metodo del fichero, ya que los scripts son más razonables.

    alvaro@xubuntu-pc:~/Programacion-en-Perl$ perl -e 'print "Hola Mundo\n";'
    Hola Mundo
    alvaro@xubuntu-pc:~/Programacion-en-Perl$ perl -e "print \"Hola Mundo\n\";"
    Hola Mundo
    alvaro@xubuntu-pc:~/Programacion-en-Perl$ cat HolaMundo/hola_mundo.pl 
    #!/usr/bin/perl
    print "Hola Mundo\n";
    alvaro@xubuntu-pc:~/Programacion-en-Perl$ ./HolaMundo/hola_mundo.pl 
    Hola Mundo

Además, podemos usar la herramienta `say`, que nos hace un `print` poniendo al final el salto de linea:

    alvaro@xubuntu-pc:~/Programacion-en-Perl$ cat HolaMundo/hola_mundo_say.pl 
    #!/usr/bin/perl
    use feature 'say';
    say "Hola Mundo";
    alvaro@xubuntu-pc:~/Programacion-en-Perl$ ./HolaMundo/hola_mundo_say.pl 
    Hola Mundo


## Variables
A continuación, se muestra la sintaxis a utilizar para variables simples:

```Perl
#!/usr/bin/perl

use feature "say";

# Escalares
my $nombre = 'Alvaro';
my ($edad, $pais) = (22, 'España');

my $info = "$nombre vive en \"$pais\" y tiene $edad años.";
say $info;
$info = qq{$nombre vive en "$pais" y tiene $edad años.};
say $info;

```

Por otro lado, Perl nos ofrece la posibilidad de utilizar `bunches`. Este mecanismo es muy útil para manejar textos de gran dimensión:

```Perl
#!/usr/bin/perl

my $bunch = <<"END"; #Termina cuando se encuentre "END"
Esto es una linea
Esto es otra linea
Esto es otra linea
Esto es otra linea
Esto es otra linea
Esto es otra linea
Esto es otra linea
Esto es otra linea
Esto es otra linea
Esto es otra linea
Esto es la ultima linea
END

print $bunch;
```

Su ejecución por tanto:

    alvaro@xubuntu-pc:~/Programacion-en-Perl$ ./Variables/bunches.pl 
    Esto es una linea
    Esto es otra linea
    Esto es otra linea
    Esto es otra linea
    Esto es otra linea
    Esto es otra linea
    Esto es otra linea
    Esto es otra linea
    Esto es otra linea
    Esto es otra linea
    Esto es la ultima linea


## Numeros
Veamos ahora el uso de numeros y aritmética básica:

```Perl
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

```

En Perl, hay varias formas de incrementar un numero. Vamos a verlas:


```Perl
#!/usr/bin/perl

use feature 'say';

my $var = 5;	# var = 5
$var += 1;

say "var++ = ", $var++;	# Devuelve e incrementa (6)
say "++var = ", ++$var;	# Incrementa y devuelve (8)
say "var-- = ", $var--;	# Devuelve y decrementa	(8)
say "--var = ", --$var;	# Decrementa y devuelve	(6)

```

Y ahora, veamos unas operaciones más complejas:


```Perl
#!/usr/bin/perl

use feature 'say';

say "EXP 1 = ", exp 1;			# e^1
say "HEX 10 = ", hex 10;		# hexadecimal -> int
say "OCT 10 = ", oct 10;		# octal -> int
say "INT 6.45 = ", int(6.45);		# Redondeo
say "LOG 2 = ", log 2;			# Logaritmo
say "Random [0, 11) = ", rand 11;	# Valor aleatorio hasta 11
say "SQRT 9 = ", sqrt 9;		# Raiz cuadrada

```


