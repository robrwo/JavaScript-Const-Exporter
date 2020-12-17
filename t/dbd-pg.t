#!perl

use Test::Most;

use JavaScript::Const::Exporter;

eval "use DBD::Pg v3.9.0";
plan skip_all => "DBD::Pg v3.9.0 required for this test" if $@;

my $exporter = JavaScript::Const::Exporter->new(
    module    => 'DBD::Pg',
    constants => ['PG_MAX_SMALLINT'],
);

ok my $js = $exporter->process, 'process';

like $js, qr/^const PG_MAX_SMALLINT = \d+\;/a, 'expected result';

done_testing;
