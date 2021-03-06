# Load the Module::Install bundled in ./inc/
use lib '.'; # added since from Perl 5.26 '.' is no more in @INC
use inc::Module::Install;

##############################################################################
# Define metadata (we read it from the binary)

name              'check_connections';
version_from      'check_connections';
perl_version_from 'check_connections';
all_from          'check_connections.pod';

##############################################################################
# Specific dependencies

include 'version';

requires 'Carp'                          => 0;
requires 'English'                       => 0;
requires 'File::Slurp'                   => 0;
requires 'Monitoring::Plugin::Getopt'    => 0;
requires 'Monitoring::Plugin'            => 0;
requires 'Monitoring::Plugin::Threshold' => 0;

install_script  'check_connections';

WriteMakefile(
    INSTALLSCRIPT        => '/usr/lib/nagios/plugins/contrib',
    INSTALLSITESCRIPT    => '/usr/lib/nagios/plugins/contrib',
    MAN1PODS             => { 'check_connections.pod' => 'blib/man1/check_connections.1', },
    MAN3PODS             => { },
);
