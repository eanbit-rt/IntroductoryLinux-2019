#!/usr/bin/env bash
rm chunk*
filecsv=spreadsheet.csv
counter=10
name=1

head -n $counter $filecsv > chunk$name.csv

((counter+=10))
((name+=1))
for i in {2..28}
do
  head -n 1 $filecsv > chunk$name.csv
  head -n  $counter $filecsv | tail -n 10 >> chunk$name.csv
  ((counter+=10))
  ((name+=1))
  if [ $name -eq 28 ]; then  head -n 1 $filecsv > chunk29.csv; tail -n 5 $filecsv >> chunk29.csv; fi 
 
done
