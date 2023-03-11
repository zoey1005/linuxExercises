#!/bin/bash

mkdir -p five  

for i in {1..5}; do
  dir_name="five/dir$i"
  mkdir -p "$dir_name"  

  for j in {1..4}; do
    file_name="$dir_name/file$j"
    touch "$file_name"  
    for k in $(seq $j); do
      echo "$k" >> "$file_name"  
    done
  done
done
