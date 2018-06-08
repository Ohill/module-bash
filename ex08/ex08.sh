#!/bin/bash
if [ -z $1 ] || ! [ -z $2 ]
then
  echo "Too many(few) arguments"
  exit 1
elif [ ! -f "$1" ]
then
echo "Error.."
exit 1
fi
vals=([0]="zeroes,"  [1]="ones," [2]="twoes," [3]="threes," [4]="fours," [5]="fives," [6]="sixs," [7]="sevens," [8]="eights," [9]="nines")
output=""
for i in {0..9}
do
  output="$output$(grep -o $i  $1 | wc -w) ${vals[$i]} "
done
echo "$output"
