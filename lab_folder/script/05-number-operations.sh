#!/bin/bash

a=4
b=5
echo $((a+b))
echo $(expr $a \* $b)



echo "=================CONVERSION===================="
hex=AB
echo $((16#$hex))
