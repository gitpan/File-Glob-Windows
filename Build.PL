use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'File::Glob::Windows',
    license             => 'perl',
    dist_author         => 'tateisu <tateisu@gmail.com>',
    dist_version_from   => 'lib/File/Glob/Windows.pm',
    requires => {
        'Test::More' => 0,
        'version'    => 0,
    },
    add_to_cleanup      => [ 'File-Glob-Windows-*' ],
);

$builder->create_build_script();
