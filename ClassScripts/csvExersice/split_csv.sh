#!/usr/bin/env bash

csv=spreadsheet.csv

counter=1

for item in {0..28}
do
  head -n 10 ${csv} > chunk${counter}
  grep -v --file=chunk${counter} $csv > csv${counter}.csv
  csv=csv${counter}.csv
  ((counter+=1))
 # csv=csv${counter}.csv
done
rm csv*  #optmize for a unique var so that it doesent remove un wanted files

