#!/bin/bash


echo '$n prints the args, starting with 0: command; 1: first param'
echo $0 $1

echo '$# prints the number of args'
echo $#

echo '$* prints the args as a single string'
echo $*

echo '$@ stores arguments as array'
echo $@
a=("$@")
echo ${a[0]}
