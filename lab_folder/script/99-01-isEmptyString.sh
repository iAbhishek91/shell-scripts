#!/bin/bash

a=''
b='test'

if [ -z $a ]; then echo "string a is empty"; fi

if [ -n $b ]; then echo "string b is not empty"; fi
