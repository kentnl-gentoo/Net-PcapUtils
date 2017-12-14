
use strict;
use warnings;

print "1..1\n";

local $@;
eval { require Net::PcapUtils };
printf "%s load Net::PcapUtils\n", ( $@ ? 'not ok' : 'ok' );
