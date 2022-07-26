# This file is generated by Dist::Zilla::Plugin::CPANFile v6.015
# Do not edit this file directly. To change prereqs, edit the `dist.ini` file.

requires "Carp" => "0";
requires "JSON::MaybeXS" => "0";
requires "Module::Load" => "0";
requires "Moo" => "1.002000";
requires "MooX::Options" => "0";
requires "Package::Stash" => "0";
requires "Path::Tiny" => "0";
requires "Ref::Util" => "0";
requires "Sub::Identify" => "0.06";
requires "Types::Common::String" => "0";
requires "Types::Standard" => "0";
requires "namespace::autoclean" => "0";
requires "perl" => "v5.10.0";
requires "strict" => "0";
requires "warnings" => "0";
recommends "Cpanel::JSON::XS" => "0";
recommends "Package::Stash::XS" => "0";
recommends "Ref::Util::XS" => "0";
recommends "Type::Tiny::XS" => "0";

on 'test' => sub {
  requires "Exporter" => "0";
  requires "File::Spec" => "0";
  requires "Module::Metadata" => "0";
  requires "Test2::V0" => "0";
  requires "Test::Deep" => "1.127";
  requires "Test::Deep::Regexp" => "0";
  requires "Test::Deep::Set" => "0";
  requires "Test::Differences" => "0";
  requires "Test::More" => "0";
  requires "Test::Most" => "0.35";
  requires "Test::Script" => "1.23";
  requires "Test::Warnings" => "0.028";
  requires "constant" => "0";
  requires "lib" => "0";
  requires "version" => "0.77";
};

on 'test' => sub {
  recommends "CPAN::Meta" => "2.120900";
  recommends "Const::Exporter" => "0";
  recommends "Const::Fast::Exporter" => "0";
  recommends "HTTP::Status" => "0";
};

on 'configure' => sub {
  requires "ExtUtils::MakeMaker" => "0";
};

on 'develop' => sub {
  requires "Pod::Coverage::TrustPod" => "0";
  requires "Test::EOF" => "0";
  requires "Test::EOL" => "0";
  requires "Test::Kwalitee" => "1.21";
  requires "Test::MinimumVersion" => "0";
  requires "Test::More" => "0.88";
  requires "Test::NoTabs" => "0";
  requires "Test::Perl::Critic" => "0";
  requires "Test::Pod" => "1.41";
  requires "Test::Pod::Coverage" => "1.08";
  requires "Test::Pod::LinkCheck" => "0";
  requires "Test::Portability::Files" => "0";
  requires "Test::TrailingSpace" => "0.0203";
};
