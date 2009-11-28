use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'App::USBKeyCopyCon',
    AUTHOR              => 'Grant McLean <grantm@cpan.org>',
    VERSION_FROM        => 'lib/App/USBKeyCopyCon.pm',
    ABSTRACT_FROM       => 'lib/App/USBKeyCopyCon.pm',
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'App-USBKeyCopyCon-*' },
);
