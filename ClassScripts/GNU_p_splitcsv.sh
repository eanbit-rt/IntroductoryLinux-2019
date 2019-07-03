numlines=$(wc -l < spreadsheet.csv)
echo "${numlines}"
num_chunks=$((numlines / 10 ))
#add 1 to num_chunks if last digit of numlines is not 0
if [ ${numlines: -1} -ne 0 ]
then
num_chunks=$((num_chunks+1))
fi
echo "${num_chunks}"
# using GNU parallel
cat spreadsheet.csv | parallel --header : --pipe -N 10 'cat > chunk{#}'
