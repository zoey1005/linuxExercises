#!/bin/bash

column=$1
echo "usage:mean.sh <colunmn> [file.csv]"

if [[ $# -eq 2]]; then
    file=$2
elif [[$# -eq 1]]; then
    file =/dev/stdin
else
    echo "NONE"
fi
cut $file -d, -f $column | tail -n +2 | {sum=0;linecount=0; while read n; do sum=$(($sum+$n)); linecount=$(($linecount+1)); done; echo $sum/$linecount; }|bc -1
