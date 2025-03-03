use strict;
use warnings;

use Data::ExternalId;
use English;
use Error::Pure::Utils qw(clean);
use Test::More 'tests' => 4;
use Test::NoWarnings;

# Test.
my $obj = Data::ExternalId->new;
isa_ok($obj, 'Data::ExternalId');

# Test.
$obj = Data::ExternalId->new(
	'id' => 7,
);
isa_ok($obj, 'Data::ExternalId');

# Test.
eval {
	Data::ExternalId->new(
		'id' => 'bad',
	);
};
is($EVAL_ERROR, "Parameter 'id' must be a natural number.\n",
	"Parameter 'id' must be a natural number (bad).");
clean();
