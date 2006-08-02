use 5.006000;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME              => 'Acme::Terror::UK',
    VERSION_FROM      => 'lib/Acme/Terror/UK.pm', # finds $VERSION
    PREREQ_PM         => {LWP::Simple => 1.0},
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM  => 'lib/Acme/Terror/UK.pm', # retrieve abstract from module
       AUTHOR         => 'Robert Price <rob at robertprice dot co dot uk>') : ()),
);
