#!/bin/bash

count=0

# (( backet is just as for evaluating a expression
while [ $count -lt 5 ]; do echo "$count"; count=$((count+1)); done

echo " =========================================== "
# UNTIL Loop

limit=0
until [ $limit -gt 5 ]; do echo $limit; ((limit++)); done

echo " =========================================== "
# For loop

for a in 1 2 3 4
do
	echo $a
done

for b in {1..5}; do echo $b; done


for c in {1..10..2};do echo $c; done


for ((i=0; i<5; i++)); do echo $i; done


