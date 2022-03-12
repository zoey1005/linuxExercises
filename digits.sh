#!/bin/bh                                                                       
total=0
for i in range(1000,2001):
    r=0
    for j in str(i):
        if int(j) in [0,1]:
            r+=1

        if r==4:
            total +=i
print("total sum ={}".format(total))

TOTAL SUM = 8444
