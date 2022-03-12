#!/bin/bash

cat Property_Tax_Roll.csv | grep "MADISON SCHOOL" | cut -d, -f 7 | {sum=0; num=0; while read x; do sum=$(($sum+$x)); num=$(($num+1)); done; echo $sum/$num;}
