use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'autobox::List::Util',
    license             => 'perl',
    dist_author         => 'Chas. J. Owens IV <chas.owens@gmail.com>',
    dist_version_from   => 'lib/autobox/List/Util.pm',
    build_requires => {
        'Test::More'   => 0,
	'Module::Load' => 0,
	'List::Util'   => 0,
	'autobox'      => 0,
    },
    add_to_cleanup      => [ 'autobox-List-Util-*' ],
    create_makefile_pl => 'traditional',
    meta_merge => {
        resources => {
            repository => 'https://github.com/cowens/autobox-List-Util',
        }
    },
);

$builder->create_build_script();
