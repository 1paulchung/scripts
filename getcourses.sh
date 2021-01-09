#! /bin/bash

#Paul Chung
#pchung2
#HW2: Part 1

if [ $# -lt 2 ]; then
  echo "Provide more than 2 arguments"
  exit 1
fi

if [ -f $2 ]; then 
  grep -Eo '(http|https)://courses.cs.washington.edu/courses/cse[0-9]*/20au' $2 > $1
  exit 0
else
  echo "Input file does not exist"
  exit 1
fi
