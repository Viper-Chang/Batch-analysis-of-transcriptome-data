#!/bin/bash

for file in *
do
        file_path=`pwd`	#·´ÒýºÅ
        dir_name="$file"
        #declare -a Array=(¡®john¡¯ ¡®jam¡¯)
        if test -d $dir_name
        then
                echo $dir_name
		cd $dir_name
		#i = 0
		#let i = 0
		#$i=45+20
		declare -i i=0
		declare -a Array=(¡®john¡¯ ¡®jam¡¯)
		for file in *
		do
		    Array[i]="$file"
		    i=i+1
		    #ls
		    #echo ${Array[1]}
		done
		mkdir $dir_name
		trimmomatic PE -threads 16 ${Array[0]} ${Array[1]} -baseout $dir_name/$dir_name ILLUMINACLIP:TruSeq3-PE.fa:2:30:10 SLIDINGWINDOW:10:20 LEADING:3 TRAILING:3
		rm -r $dir_name
		cd ..
        fi
done