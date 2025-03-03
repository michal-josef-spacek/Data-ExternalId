package Data::ExternalId;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils 0.28 qw(check_number_id check_required);

our $VERSION = 0.01;

has id => (
	is => 'ro',
);

has key => (
	is => 'ro',
);

has value => (
	is => 'ro',
);

sub BUILD {
	my $self = shift;

	# Check id.
	check_number_id($self, 'id');

	# Check key.
	check_required($self, 'key');

	# Check value.
	check_required($self, 'value');

	return;
}

1;
