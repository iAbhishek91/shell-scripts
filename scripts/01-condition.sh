#!/bin/bash

a=10
b=20

if [ $a -eq 10 ] && [ $b -eq 20 ]
then
	echo "conditional statement passed"
fi


if [[ $a -eq 10 && $b -eq 20 ]]
then
	echo "conditional statement passed"
fi

# -a for and and -o for or
if [ $a -eq 10 -a $b -eq 20 ]
then
	echo "conditional statement passed"
fi

# =============================================
# STRING COMPARISON

c='abhishek'

if [ $c == 'abhishek' ]; then
	echo "yes I am abhishek"
fi

c2='sutapa'

if [ $c2 \> $c ]; then echo "$c2 is greater than $c"
else echo "$c is greater than $c2"; fi
# =============================================
# SUB STRING USING REGEX

d='learning free RHEL'

if [[ $d =~ .*RHEL.* ]] && [[ $d == *"RHEL"* ]]; then
	echo "sub string validation using regex passed"
fi

# ============================================
# SWITCH

e='audi'

case $e in
	'bmw' )
		echo "its a BMW";;
	'ferarri' )
		echo "its a Ferrari";;
	'audi' )
		echo "its a audi";;
	* )
		echo "its a dummy car";;
esac
