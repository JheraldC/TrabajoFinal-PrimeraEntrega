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

