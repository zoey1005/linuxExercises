#!/bin/bh

total=0
for i in {1000..2000}; do
      if [[$i= ~[0-1]{4}]]; then
              total=$(($total + $i));
      fi;
done

echo $total
