#!/usr/bin/perl
use strict;
use warnings;
use CGI;
use DBI;

my $q = CGI->new;
my $title = $q->param('title');
print $q->header('text/html; charset=utf-8');

