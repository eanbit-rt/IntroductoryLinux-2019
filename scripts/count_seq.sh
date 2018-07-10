#!/bin/bash

for fasta in *.fa
do

	no=`grep '>' $fasta | wc -l`	
	echo The file, $fasta, contains $no sequences
done
