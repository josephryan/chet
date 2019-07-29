use ExtUtils::MakeMaker;

WriteMakefile(
    NAME               => 'chet',
    VERSION_FROM       => 'chet',
    LICENSE            => 'gpl_3',
    CONFIGURE_REQUIRES => { 'ExtUtils::MakeMaker' => '0', },
    PREREQ_PM          => {'JFR::Fasta => 1.0'}, 
    EXE_FILES          => ['chet']);
