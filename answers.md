## Task 1

Command:
awk -F',' 'NR>1{count++} END{print count}' Lab03-data.csv

Result:
322

Explanation:
The script skips the header using NR>1, counts each submission and prints the total number of submissions in the END block.

## Task 2

Command:
awk -F',' 'NR>1{seen[$1]=1} END{for(s in seen) count++; print count}' Lab03-data.csv

Result:
14

Explanation:
The script uses an associative array called seen to store each student name as a unique key. Since duplicate keys are not counted twice, the END block counts the total number of different students in the file.

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

Command:
awk -F',' 'NR>1 && $4 < ($5*0.60){count++} END{print count}' Lab03-data.csv

Result:
50

Explanation:
The script compares each score ($4) with 60% of the maximum possible score ($5) for that assignment. If the score is below 60%, the submission is counted as failing, and the total number of failing submissions is printed in the END block.

## Task 5

Result:
awk -f assignment_report.awk Lab03-data.csv
Name       Low        High       Average   
Q06        8          20         14.71     
L05        17         50         38.21     
WS         2          5          4.21      
L06        27         50         40.07     
Q07        12         20         15.36     
L07        21         50         38.43     
H01        46         100        82.71     
H02        55         100        77.57     
H03        62         100        82.43     
H04        32         97         72.93     
H05        51         100        74.00     
H06        37         98         74.21     
H07        40         100        72.93     
Q01        9          20         14.29     
L01        27         50         40.21     
Q02        9          20         14.86     
L02        23         50         39.21     
Q03        8          20         15.07     
L03        19         50         36.57     
Q04        13         20         16.43     
FINAL      116        200        156.86    
Q05        8          18         15.07     
L04        25         50         40.36     
...

Explanation:
The script uses associative arrays indexed by assignment name to calculate the minimum score, maximum score and average score for each assignment.

## Task 6

Command:
awk -f student_grade.awk Lab03-data.csv

Result:
Student    Percent    Grade
Tomas      82.22      B    
Diana      62.08      D    
Andrew     73.69      C    
Lucia      89.53      B    
Kenji      86.45      B    
Chelsey    62.65      D    
Eliza      84.16      B    
Shane      93.12      A    
Noah       63.08      D    
Ava        81.43      B    
Maria      79.57      C    
Priya      71.04      C    
Jackson    78.64      C    
Sam        72.90      C  

Explanation:
The script accumulates earned points and maximum points for every student. It then calculates the final percentage and assigns a letter grade using an if/else chain.

## Task 7

Command:
./run.sh Lab03-data.csv

Result:
Student    Percent    Grade
Andrew     73.69      C    
Ava        81.43      B    
Chelsey    62.65      D    
Diana      62.08      D    
Eliza      84.16      B    
Jackson    78.64      C    
Kenji      86.45      B    
Lucia      89.53      B    
Maria      79.57      C    
Noah       63.08      D    
Priya      71.04      C    
Sam        72.90      C    
Shane      93.12      A    
Tomas      82.22      B   

Explanation:
The Bash script receives a filename as an argument, executes the Task 6 AWK script, keeps the header on top and sorts the remaining rows alphabetically.