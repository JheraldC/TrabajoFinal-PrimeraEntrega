#!/usr/bin/perl
use strict;
use warnings;
use CGI;
use DBI;

my $q = CGI->new;
my $title = $q->param('title');
print $q->header('text/html; charset=utf-8');

print "<h1>$title</h1>"

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

print<<HTML;
<form action="new.pl" method="GET">
<label for="markdown2">Texto</label>
<br>
<input type="hidden" value=$title name="title">
<textarea style="width:313px; height:227px"; maxlength="255" name="markdown2" rows="15" cols="17" id="markdown2">
HTML

