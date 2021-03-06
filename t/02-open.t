#!/usr/bin/perl -w
#
# Test Net::PcapUtils::open() function
#
# $Id: 02-open.t,v 1.1 1999/04/07 01:23:20 tpot Exp $
#

use strict;
BEGIN {
  if ( $> != 0 ) {
    print "1..0 # SKIP This test requires running as root";
    exit 0;
  }
}

use ExtUtils::testlib;

use Net::Pcap;
use Net::PcapUtils;

print("1..1\n");

my $pcap_t = Net::PcapUtils::open();

if (!ref($pcap_t)) {
    print("$pcap_t\nnot ok\n");
    exit;
}

print("ok\n");
