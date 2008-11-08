#!perl 
use File::Glob::Windows qw( glob getCodePage );
use strict;
use warnings;
use utf8;
use Encode;
use Test::More  qw(no_plan);


plan skip_all => "please test this on windows" if not $^O =~ /Win/;

our $os_encoding = getCodePage();
binmode $_,":encoding($os_encoding)" for \*STDOUT,\*STDERR; 

eval{ glob(undef);};
ok($@);

eval{ glob('');};
ok($@);

for my $testpt(
	'.',
	'\\',
	'..',
	'..\\..',
	'c:',
	'c:\\',
	'c:.',
	'c:*',
	'test.pl',
	'*.pl',
	'w:\\*\\File-Glob-Windows\\*.pl',
	'\\\\juice\\tateisu\\*ww',
){
	my @result = eval{ 
		local $File::Glob::Windows::encoding = $os_encoding;
		local $File::Glob::Windows::sorttype = 4;
		local $File::Glob::Windows::nocase   = 1;
		glob($testpt);
	};
	if($@){
		warn "Error: $testpt: $@\n";
		ok(0);
	}else{
		ok(1);
	}
}

