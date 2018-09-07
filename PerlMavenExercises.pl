#!/usr/bin/env perl

use strict;
use warnings;

# ask a user for 2 numbers and print the sum of the numbers
print "Hello, please give me two numbers, one after the other.\n";
my $number1 = <STDIN>;
my $number2 = <STDIN>;
my $addition = $number1 + $number2;
print "Thank you, those numbers add up to $addition\n";

# ask the user how many cups of coffe they want to buy
print "How many coffee's would you like?\n";
my $coffee_count = <STDIN>;
chomp $coffee_count; # removes trailing white space

if ($coffee > 2) {
	print "That is a lot of coffee! I'll grab you a cup holder.\n";
} else {
	print "Sure thing!\n";
}

# ask the user their age. Example of using nested statements
print "Hello. How old are you?\n";
my $age = <STDIN>;
if ($age >= 18) {
	print "If this is the UK - Let's have a drink!\n";
	if ($age >= 21) {
		print "We can drink all over the world!\n";
	}
} else {
	print "No alcohol for you!\n";
}

# using operators and loops
while(1) {
	print "Please enter your username.\n";
	my $username = <STDIN>;
	chomp $username;
	if ( $username eq "denisetest" ) {
		last;
	}
	print "Your username is incorrect, try again!\n";
}
print "Welcome!\n";

# subroutine example

ask_question();
my $answer = get_answer();

sub ask_question {
	print "Welcome to GitHub. Have you used GitHub before?\n";
	return;
}

sub get_answer {
	my $answer = <STDIN>;
	chomp $answer;
		if ($answer eq 'Yes') {
			print "Awesome, crack on!\n";
		} else {
			print "Please contact our support team for a tutorial.\n";
		}
	return $answer;
}
