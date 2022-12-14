#!/usr/bin/perl
use strict;
use warnings;
use CGI;
use DBI;

my $q = CGI->new;
print $q->header("text/html; charset=utf-8");
my $titulo = $q->param('titulo');
my $markdown = $q->param('markdown');
#Segundo
my $title = $q->param('title';
my $markdown2 = $q->param('markdown2');

my $user = 'alumno';
my $password = 'pweb1';
my $dsn = "DBI:MariaDB:database=pweb1;host=localhost";
my $dbh = DBI->connect($dsn, $user, $password) or die("No se pudo conectar!");

