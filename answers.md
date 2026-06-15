## Task 1

Command:
awk -F',' 'NR>1{count++} END{print count}' Lab03-data.csv

Result:
322

Explanation:
The script skips the header using NR>1, counts each submission and prints the total number of submissions in the END block.

## Task 2
awk -F',' 'NR>1{seen[$1]=1} END{for(s in seen) count++; print count}' Lab03-data.csv
14