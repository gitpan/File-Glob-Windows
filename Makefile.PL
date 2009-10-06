use inc::Module::Install;
name 'File-Glob-Windows';

perl_version '5.8.3';
license 'perl';
author 'tateisu <tateisu@gmail.com>';

all_from 'lib/File/Glob/Windows.pm';
test_requires 'Test::More';

use_test_base;
auto_include_deps;
check_nmake;
author_tests('xt');

WriteAll;
