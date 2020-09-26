#!/bin/bash

# Going through all n subdirectory and making some change in the saample.txt of each one based on the critera

n=500
for i in `seq 1 $n` ; do
if [ $(($i % 10 )) -eq 1 ]
then
	(cd Hesam/Folder_$i && awk '{ if (NR == 4) print "eat beets"; else print $0}' sample.txt >| output_file.txt && rm -r sample.txt)    
elif [ $(($i % 10 )) -eq 4 ]
then
	(cd Hesam/Folder_$i && awk '{ if (NR == 4) print "squash are great"; else print $0}' sample.txt >| output_file.txt && rm -r sample.txt)
elif [ $(($i % 10 )) -eq 5 ]
then
	(cd Hesam/Folder_$i && awk '{ if (NR == 4) print "Dogs are better than cats"; else print $0}' sample.txt >| output_file.txt && rm -r sample.txt)
	elif [ $(($i % 10 )) -eq 7 ]
then
	(cd Hesam/Folder_$i && awk '{ if (NR == 4) print "Hello World"; else print $0}' sample.txt >| output_file.txt && rm -r sample.txt)
	elif [ $(($i % 10 )) -eq 0 ]
then
	(cd Hesam/Folder_$i && awk '{ if (NR == 4) print "Sing your favorite song loudly"; else print $0}' sample.txt >| output_file.txt && rm -r sample.txt)
	else 
	(cd Hesam/Folder_$i && awk '{ if (NR == 4) print " "; else print $0}' sample.txt >| output_file.txt && rm -r sample.txt) 
	

fi

	done

	


