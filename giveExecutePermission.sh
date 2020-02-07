#!/bin/bash

find ~/Desktop/abhishek/shell-scripts -name "*.sh" | while read file
    do
      echo $file
      chmod -R +x $file
    done
