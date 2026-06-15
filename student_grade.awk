# David Vaca
# Systems Engineering
# Task 6 - Student Grades

BEGIN {
    FS=","
}

NR==1 {
    next
}

{
    earned[$1]+=$4
    possible[$1]+=$5
}

END {

    printf "%-10s %-10s %-5s\n",
    "Student","Percent","Grade"

    for(student in earned) {

        percent=(earned[student]/possible[student])*100

        if(percent >= 90)
            grade="A"
        else if(percent >= 80)
            grade="B"
        else if(percent >= 70)
            grade="C"
        else if(percent >= 60)
            grade="D"
        else
            grade="E"

        printf "%-10s %-10.2f %-5s\n",
        student,
        percent,
        grade
    }
}