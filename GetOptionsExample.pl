#!/usr/bin/env perl

use strict;
use warnings;
use Getopt::Long;

my ($name, $age, $contact_id, $verbose);
GetOptions(
	'name=s' => \$name,
	'age=i' => \$age,
	'contact_id=i' => \$contact_id,
	'verbose!' => \$verbose   # allows us to specify verbose or non verbose
);

print "Here are the details you have entered: $name, $age, $contact_id.\n";

if ($verbose) {
	print "Hello $name, I can confirm you are a valid customer.\n";
} else {
	print "Hello $name, I am unable to find contact id: $contact_id in our system. This means you are either not a customer or your contact id is incorrect.\n";
}
