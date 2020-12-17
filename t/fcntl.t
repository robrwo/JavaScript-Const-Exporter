#!perl

# This is for testing constants exported from XS modules

use Test2::V0;

use JavaScript::Const::Exporter;

my $exporter = JavaScript::Const::Exporter->new(
    module    => 'Fcntl',
    constants => ['LOCK_SH'],
);

ok my $js = $exporter->process, 'process';

like $js, qr/^const LOCK_SH = \d+\;/a, 'expected result';

done_testing;
