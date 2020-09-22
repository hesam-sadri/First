#!bin/bash

#split the file to subfiles based on their structure
File=${1?please provide a parameter}
x1=$(grep -ni "frame" $File | cut -d : -f 1 | head -1)
echo x1 is $x1
x2=$(grep -ni "frame" $File | cut -d : -f 1 | tail -1)
echo x2 is $x2
dif=$((x2 - x1))

grep -ni -A $dif "frame"  NW1.csv >| NW1_1.csv

tail -n+$x2 NW1.csv >| NW1_2.csv

