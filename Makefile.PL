use 5.010_001;
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  NAME         => 'Primetime',
  VERSION_FROM => 'lib/Primetime.pm',
  ABSTRACT     => 'Job scheduler with launch contraints',
  AUTHOR       => 'Nic Sandfield <niczero@cpan.org>',
  LICENSE      => 'artistic_2',
  META_MERGE   => {
    requires  => {perl => 5.010001},
    resources => {
      homepage    => 'http://niczero.github.com/primetime',
      license     => 'http://www.opensource.org/licenses/artistic-license-2.0',
      repository  => 'http://github.com/niczero/primetime',
      bugtracker  => 'http://github.com/niczero/primetime/issues'
    },
    no_index => {directory => [qw(cfg data test)]}
  },
  BUILD_REQUIRES => {'Test::More' => 0},
  CONFIGURE_REQUIRES => {'ExtUtils::MakeMaker' => '6.30'},
  PREREQ_PM => {Mojolicious => 5.01},
  EXE_FILES => [],
  test => {TESTS => 'test/*.t'}
);
