#! /bin/bash

#Paul Chung
#pchung2
#HW2: Part 3

if [ $# -lt 1 ]; then
  echo "Need two arguments for this script to run"
  exit 1
fi

file=$2

while read line; do
  echo "Performing byte-size measurement on $line" 
  wget $line | wc -c > $1
  num=$((wc -c $line))
  if [ num -gt 0 ]; then
    echo "...successful"
  else
    echo "...failure"
  fi
done < $2  

exit 0
