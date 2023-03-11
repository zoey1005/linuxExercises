#!/bin/bash

cat Property_Tax_Roll.csv | grep "MADISON SCHOOLS" | cut -d ',' -f 7 | { echo -n "Total: "; awk '{s+=$1} END {print s}'; echo -n "Average: "; awk '{s+=$1} END {print s/NR}'; }
