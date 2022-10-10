#!/bin/bash
# calculation of average emissions
echo = "Sum of air emissions"
cat $1 | awk '{ sum+=$2+$3} END {print sum}'
echo ="Sum of water emissions"
lines=$(wc -l < $1)
cat $1 | awk '{ sum+=$4} END {print sum}'
awk '/WASHINGTON/ {print}' $1 > washington.txt

