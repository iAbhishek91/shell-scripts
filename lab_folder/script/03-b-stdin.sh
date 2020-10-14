#!/bin/bash


# Whatever we type it will print after pressing ENTER
while read line
do
	echo $line
done < "${1:-/dev/stdin}"


