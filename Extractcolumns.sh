#!/bin/bash
#Extracting columns
# cut -d',' Cut columns 1,2,4 with , delimitor
# > $csv_file.cut: Save to temporary file
cut -d',' -f1,7,40,41,42 $1 > $csv_file.cut
# mv $csv_file.cut $csv_file: Rename temporary file to original file
mv $csv_file.cut $1
# File is processed and saved back into the same
# There are other ways to do this
# Using intermediate file is the most reliable method.
