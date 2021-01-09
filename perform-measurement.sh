#! /bin/bash

#Paul Chung
#pchung2
#HW2: Part 2

if [ $# -lt 1 ]; then
  echo "Needs one argument"
  exit 1
else
  wget $1 | wc -c 
  exit 0
fi



