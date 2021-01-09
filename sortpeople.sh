#! /bin/bash

#Paul Chung
#pchung2
#HW 1: Problem #1

if [ $# -lt 1 ]; then
  echo "Too few arguments"
  exit 0
fi
 
if [ $# -eq 1 ] && [ -f $1 ]; then
  cat $1 | cut -d ' ' -f 2| sort
  exit 0
else 
  echo "Argument passed is not valid"
  exit 1
fi
