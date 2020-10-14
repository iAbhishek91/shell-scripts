#!/bin/bash

# write to STDOUT
# Both the below statemtns are same

ls -al > file1
ls -al 1> file1

# write to STDERR

ls +al 2>fileErr 1> file1

# So for 1 will save STDOUT and 2 will save STDERR
# The below wil save both STDOUT and STDERR in same file
ls +al >& fileBoth
