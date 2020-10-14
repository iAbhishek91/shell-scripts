#!/bin/bash

echo "---------CONTATENATION--------------"
a="aBhi"
b="sHEk"

name=$a$b
echo $name

echo "---------LOWER/UPPER------------"
echo "lowercase ${name,,}"
echo "uppercase ${name^^}"
echo "A should be capital ${name^a}"
