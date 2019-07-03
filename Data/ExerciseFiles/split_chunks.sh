#!/bin/bash

# this script will split the contents of spreadsheet.csv
# into chunks of 10 lines each.

# first, we count the number of lines in the file:
numlines=$(wc -l < spreadsheet.csv)

# echo "${numlines}"

# within double-parenthesis constructs, no need for the
# dollar sign to perform variable substitution:
num_chunks=$(( numlines / 10 )) 

# numlines=5630 # DEBUG
# we need to add 1 to num_chunks iff the last digit of
# numlines is not a zero
if [ ${numlines: -1} -ne 0 ]
then
  num_chunks=$(( num_chunks + 1 ))
fi

echo "${num_chunks}"
