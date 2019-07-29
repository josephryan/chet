# chet
Produces an index (chet index) of compositional heterogeneity for 2 clades

DESCRIPTION
------------

This program produces an index representing the level of compositional
heterogeneity between two clades. The index is the sum of differences
between average percentages for each amino acid or nucleotide tested.

AUTHOR
------------

Joseph Ryan <joseph.ryan@whitney.ufl.edu>

REQUIRES
------------

JFR-PerlModules
https://github.com/josephryan/JFR-PerlModules

INSTALLATION
------------

To install type the following:

   perl Makefile.PL
   make
   make install
   
To install without root privelages try:

   perl Makefile.PL PREFIX=/home/myuser/scripts
   make
   make install

HELP
------------

Detailed documentation is embedded in each module and script in the form of pod (plain old documentation). It can be viewed by using the perldoc program

    perldoc chet

USAGE
------------

    chet --fasta=FASTA_ALN --clade1=CSV_OF_GROUP1 --clade2=CSV_OF_GROUP2
       [--version] [--help]

OPTIONS
------------

       --fasta
           fasta formatted sequence file (usually aligned)

       --clade1
           comma separated list of taxa in one of the clades to be compared

       --clade2
           comma separated list of taxa in the other clade to be compared

       --help
           Print this manual

       --version
           Print the version. Overrides all other options.

EXAMPLE OF USAGE
------------

This program produces an index representing the level of compositional
heterogeneity between two clades. The index is the sum of differences
between average percentages for each amino acid or nucleotide tested.

You have a tree that looks like this:

    ((((A1,(A2,A3)),(A4,A5)),((B1,(B2,B3)),(B4,B5))),(((C1,(C2,C3)),(C4,C5)),((D1,(D2,D3)),(D4,D5))))

You suspect that the A and B clades are being pulled together because
of comphet and that A and C should be a clade. Run the following:

    chet --fasta=ABCD.fa --clade1=A1,A2,A3,A4,A5 --clade2=C1,C2,C3,C4,C5`

then run:

    chet --fasta=ABCD.fa --clade1=A1,A2,A3,A4,A5 --clade2=B1,B2,B3,B4,B5`

If your hypothesis is correct, the first cmd should produce a larger number than the second cmd.

To get a p-value first subtract the comphet of the AB comparison from
the comphet of the AC comparison; this is the comphet diff test-
statistic. Next, simulate a large number of datasests (~10,000) on the
ABCD tree (producing a matrix of the same dimensions). Run the chet
commands above on each of these datasets, and compute a comphet diff
for each dataset. Count how many of your simulated comphet diffs are
greater than your comphet diff test-statistic. The p-value is this
count divided by the number of simulations.

COPYRIGHT AND LICENCE
------------

Copyright (C) 2019 by Joseph Ryan

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program in the file LICENSE.  If not, see
http://www.gnu.org/licenses/.



