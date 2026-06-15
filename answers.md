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

## Task 3
awk -F',' 'NR>1 && $3=="FINAL"{printf "%-10s %3d\n",$1,$4}' Lab03-data.csv
Jackson    169
Kenji      162
Shane      193
Noah       116
Lucia      200
Priya      159
Andrew     123
Diana      152
Maria      152
Eliza      141
Tomas      163
Sam        152
Ava        172
Chelsey    142

## Task 4
awk -F',' 'NR>1 && $4 < ($5*0.60){count++} END{print count}' Lab03-data.csv
50 