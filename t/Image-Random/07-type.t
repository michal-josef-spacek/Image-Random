# Pragmas.
use strict;
use warnings;

# Modules.
use English;
use Error::Pure::Utils qw(clean);
use Image::Random;
use Test::More 'tests' => 4;
use Test::NoWarnings;

# Test.
my $obj = Image::Random->new;
my $ret = $obj->type;
is($ret, 'bmp', 'Get default image type.');

# Test.
$ret = $obj->type('jpeg');
is($ret, 'jpeg', 'Get image type after set.');

# Test.
eval {
	$obj->type('foo');
};
is($EVAL_ERROR, "Suffix 'foo' doesn't supported.\n",
	"Suffix 'foo' doesn't supported.");
clean();
