#!/usr/bin/perl
use strict;
use warnings;
use CGI;
use DBI;

print "Content-type: text/html; charset=UTF-8\n\n";
print<<HTML;
<!DOCTYPE html>
<link href="css/style.css" rel="stylesheet" type="text/css">
<html lang="es">
  <head>
    <meta charset="UTF-8">
    <title>Listado</title>
  </head>
  <body>
  <h1>Nuestras páginas wiki</h1>
  <hr>
HTML
