#!/usr/bin/perl
use strict;
use warnings;

# first, create your message
use Email::MIME;
my $message = Email::MIME->create(
  header_str => [
    From    => 'achuthgovind@gmail.com',
    To      => 'achutheman@yahoo.co.in',
    Subject => 'testing',
  ],
  attributes => {
    encoding => 'quoted-printable',
    charset  => 'ISO-8859-1',
  },
  body_str => "Hey there\n",
);

# send the message
use Email::Sender::Simple qw(sendmail);
sendmail($message);
