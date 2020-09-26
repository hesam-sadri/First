#!bin/bash

# This code will make a Hesam directory & produce n subdirectory with a sample.txt
mkdir -p Hesam

# making a sample.txt

echo "line 1
line 2
line 3
line 4
line 5" >| sample.txt


n=500

for i in `seq 1 $n`;do
    (cd Hesam && mkdir -p Folder_$i)
    cp sample.txt Hesam/Folder_$i
done


