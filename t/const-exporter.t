#!perl

use Test::Most;
use Test::Deep::Set;

use JavaScript::Const::Exporter;

eval "use Const::Exporter";
plan skip_all => "Const::Exporter required for this test" if $@;

subtest 'Const::Exporter (specific constants)' => sub {

    local @INC;

    my $exporter = JavaScript::Const::Exporter->new(
        module    => 'Consts1',
        include   => [qw( t/lib )],
        constants => [qw/ $zoo foo /],
    );

    ok my $js = $exporter->process, 'process';

    my $expected = <<EOF;
const foo = 1;
const zoo = 3;
EOF

    is $js, $expected, 'expected output';

    cmp_deeply \@INC, supersetof( @{ $exporter->include } ), "\@INC changed";

};

subtest 'Const::Exporter tag' => sub {

    local @INC;

    my $exporter = JavaScript::Const::Exporter->new(
        module    => 'Consts1',
        include   => [qw( t/lib )],
        constants => [':tag_a'],
    );

    ok my $js = $exporter->process, 'process';

    my $expected = <<EOF;
const bar = 2;
const baz = ["a","b","c"];
const bo = {"a":1};
const foo = 1;
EOF

    is $js, $expected, 'expected output';

};

subtest 'Const::Exporter (all exports)' => sub {

    local @INC;

    my $exporter = JavaScript::Const::Exporter->new(
        module    => 'Consts1',
        include   => [qw( t/lib )],
    );

    ok my $js = $exporter->process, 'process';

    my $expected = <<EOF;
const bar = 2;
const baz = ["a","b","c"];
const bo = {"a":1};
const foo = 1;
const zoo = 3;
EOF

    is $js, $expected, 'expected output';

};

done_testing;
