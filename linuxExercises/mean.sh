#!/bin/bash

if [[ "$#" -lt 1 || "$#" -gt 2 ]]; then
  >&2 echo "usage: $0 <column> [file.csv]"
  exit 1
fi

col=$1
file=${2:-/dev/stdin}

sum=0
n=0

cut -d ',' -f "$col" "$file" | tail -n +2 | {
  while read x; do
    sum=$(bc <<< "$sum + $x")
    n=$((n+1))
  done
  mean=$(bc <<< "scale=2; $sum / $n")
  echo "$mean"
}
