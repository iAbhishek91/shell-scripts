#!/bin/bash

# Give execute permission to all the files.
# the below command will not replace multiple intance in a single line, as this is a line parser
cat -n ~/Desktop/abhishek/shell-scripts/lab_folder/sed-1.txt | sed 's/linux/windows/'
echo "-------------------------------------"

# ignore the case(mac do not support)
cat -n ~/Desktop/abhishek/shell-scripts/lab_folder/sed-1.txt | sed 's/linux/windows/i'
echo "-------------------------------------"

#replaces all the mathces in a line (/ and @ is same)
cat -n ~/Desktop/abhishek/shell-scripts/lab_folder/sed-1.txt | sed 's@linux@windows@g'
echo "-------------------------------------"

# make a word Upper case -r option for regular expression (may not work in mac)
cat -n ~/Desktop/abhishek/shell-scripts/lab_folder/sed-1.txt | sed -r '/abhi/ s/linux/\U&/g'
echo "-------------------------------------"

# disable impact on certain line
cat -n ~/Desktop/abhishek/shell-scripts/lab_folder/sed-1.txt | sed '1,3! s/linux/windows/'
echo "-------------------------------------"

# enable impact on certain line
cat -n ~/Desktop/abhishek/shell-scripts/lab_folder/sed-1.txt | sed '1,3 s/linux/windows/g'
echo "-------------------------------------"

# enable impact on certain line where reg exp match is found
cat -n ~/Desktop/abhishek/shell-scripts/lab_folder/sed-1.txt | sed '/abhi/ s/linux/windows/g'
echo "-------------------------------------"

# adding something at start of each line
cat ~/Desktop/abhishek/shell-scripts/lab_folder/sed-1.txt | sed 's/^/windows /'
echo "-------------------------------------"

# adding something at end of each line
cat ~/Desktop/abhishek/shell-scripts/lab_folder/sed-1.txt | sed 's/$/ windows/'
echo "-------------------------------------"

# adding space after each line
cat -n ~/Desktop/abhishek/shell-scripts/lab_folder/sed-1.txt | sed G
echo "-------------------------------------"

# filter by line number
cat -n ~/Desktop/abhishek/shell-scripts/lab_folder/sed-1.txt | sed -n 3,4p
echo "-------------------------------------"

# delete a perticuar line, (last line $d, first line ^d, others by line number)
cat -n ~/Desktop/abhishek/shell-scripts/lab_folder/sed-1.txt | sed 3d
echo "-------------------------------------"

# delete group of line
cat -n ~/Desktop/abhishek/shell-scripts/lab_folder/sed-1.txt | sed 2,3d
echo "-------------------------------------"

# delete group of line (this will work in certain version of Nix)
cat -n ~/Desktop/abhishek/shell-scripts/lab_folder/sed-1.txt | sed  '1~2d'
echo "-------------------------------------"

# applying multiple actions, using -e (expression)
cat -n ~/Desktop/abhishek/shell-scripts/lab_folder/sed-1.txt | sed -e '2,3d' -e 's/linux/windows/g'
echo "-------------------------------------"

# applying multiple actions, using -e (expression) (both are same)
cat ~/Desktop/abhishek/shell-scripts/lab_folder/sed-1.txt | sed 's@^.*$@/* & */@g'
cat ~/Desktop/abhishek/shell-scripts/lab_folder/sed-1.txt | sed 's/^.*$/\/* & *\//g'
echo "-------------------------------------"

# update the same file
sed -i ' s/linux/windows/ig' sed-1.text
echo "-------------------------------------"