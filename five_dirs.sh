#!/bin/bash

mkdir five
for i in {1..5};do
    mkdir five/dir$i;
    for num in {1..4};do
        >five/dir$i/file$num
        
        for ((line=1;line<=$num;line++)); do
            echo $num >> five/dir$i/file$num
        done
    done
done
