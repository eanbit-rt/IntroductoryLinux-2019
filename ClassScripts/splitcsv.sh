# using GNU parallel
cat spreadsheet.csv | parallel --header : --pipe -N 10 'cat > chunk{#}.csv'
