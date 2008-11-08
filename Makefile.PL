use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'File::Glob::Windows',
    AUTHOR              => 'tateisu <tateisu@gmail.com>',
    VERSION_FROM        => 'lib/File/Glob/Windows.pm',
    ABSTRACT_FROM       => 'lib/File/Glob/Windows.pm',
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
        'version'    => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'File-Glob-Windows-*' },
);
