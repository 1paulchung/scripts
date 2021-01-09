#! /bin/bash

#Paul Chung
#pchung2
#HW1: Problem #2

if [ $# -lt 2 ]; then
  echo "usage: $0 filename query..." 
  exit 0
fi

total=$((0))
file=$1

if [ -f "$file" ]; then
  shift
  for var in "$@"
  do 
    
    res=$(grep -o -F "$var" $file | wc -w)   
    total=$((total + $res))
    echo "$var: $res"
  done
  echo "$total Total"
  exit 0
else
  echo "File does not exist"
  exit 1
fi


