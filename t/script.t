#!perl

use Test2::V0;
use Test::Script;

use Path::Tiny;

my $expected = <<EOF;
const bar = 2;
const baz = ["a","b","c"];
const bo = {"a":1};
const foo = 1;
const zoo = 3;
EOF

script_runs(
    [qw( bin/js-const -I t/lib -m Consts1 )],
    {
        exit   => 0,
        stdout => \my $out
    }
);

is $out, $expected, 'expected output (stoud)';

my $file = Path::Tiny->tempfile;

script_runs(
    [qw( bin/js-const -I t/lib -m Consts1 ), "$file" ],
    {
        exit   => 0,
    }
);

is $file->slurp, $expected, "wrote to file";

done_testing;
