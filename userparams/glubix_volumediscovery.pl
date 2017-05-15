#!/usr/bin/perl
# Ex.
#       ./glubix_volumediscovery.pl
#

use strict;

my $gluster_cmd = "/usr/sbin/gluster";
my $exec_cmd = "$gluster_cmd volume list 2> /dev/null";

my $result = `$exec_cmd`;

my $list = '{"data":[{"{#GFVOL}":"';
$list .= join('"},{"{#GFVOL}":"',split("\n",$result));
$list .= '"}]}';






print "$list\n";

exit;
