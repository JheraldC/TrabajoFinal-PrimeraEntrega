#!/usr/bin/perl
use strict;
use warnings;
use CGI;
use DBI;

my $q = CGI->new;
my $title = $q->param('title');
print $q->header('text/html; charset=utf-8');

print <<HTML;
<!DOCTYPE html>
<link href="css/style.css" rel="stylesheet" type="text/css">
<html>
  <head>
  <title>Ver</title>
  </head>
HTML

my @registro;
my $user = 'alumno';
my $password = 'pweb1';
my $dsn = "DBI:MariaDB:database=pweb1;host=localhost";
my $dbh = DBI->connect($dsn, $user, $password) or die("No se pudo conectar!");

my $sth = $dbh->prepare("SELECT Text FROM Fakewiki WHERE Title=?");
$sth->execute($title);

my $i = 0;
while( my @row = $sth->fetchrow_array ) {
  @registro = split('-',$row[0]);
  $i++;
}
$sth->finish;

