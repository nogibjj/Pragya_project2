#!/bin/bash
echo ""
echo "The name of the file is:" $1
echo ""
lines=$(wc -l < $1)
echo ""
echo "The file has" $lines "lines"
echo ""
colnames=$(head -n 1 < $1)
echo ""
echo "Column names are: "
echo ""
echo $colnames
echo ""
echo $(head  -n 5  < $1 )
echo ""
echo "Exractiing columns $1"
#  'cat' is to con'cat'enate files - here used to show one year csv file
    # |: pipe
    # cut -d',' -f1,2,4: Cut columns 1,2,4 with , delimitor
    # > $csv_file.cut: Save to temporary file
    cut -d',' -f1,7,40,41,42 $1 > $csv_file.cut
    # mv $csv_file.cut $csv_file: Rename temporary file to original file
    mv $csv_file.cut $1
    # File is processed and saved back into the same
    # There are other ways to do this
    # Using intermediate file is the most reliable method.
