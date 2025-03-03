use strict;
use warnings;

use Data::ExternalId;
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Test.
my $obj = Data::ExternalId->new;
is($obj->id, undef, 'Get id (undef - default).');

# Test.
$obj = Data::ExternalId->new(
	'id' => 7,
);
is($obj->id, 7, 'Get id (7).');
