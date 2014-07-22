#!/usr/bin/perl

# gimap.pl by gxmsgx
# description: get the count of unread messages on gmail imap

use strict;
use Mail::IMAPClient;
use Config::Properties;
use IO::Socket::SSL;

open my $fh, '<', "$ENV{'HOME'}/gmail.props"
  or die "unable to open configuration file";

my $properties = Config::Properties->new();
  $properties->load($fh);

my $username = $properties->getProperty('username');  
my $password = $properties->getProperty('password');

my $socket = IO::Socket::SSL->new(
   PeerAddr => 'imap.gmail.com',
   PeerPort => 993,
  )
  or die "socket(): $@";

my $client = Mail::IMAPClient->new(
   Socket   => $socket,
   User     => $username,
   Password => $password,
  )
  or die "new(): $@";

if ($client->IsAuthenticated()) {
    my $msgct;

    $client->select("INBOX");
    $msgct = $client->unseen_count||'0';
    print "$msgct\n";
}

$client->logout();