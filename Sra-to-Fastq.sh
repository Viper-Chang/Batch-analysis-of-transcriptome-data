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
		fastq-dump --split-files ${Array[0]} -O $dir_name
		rm -r $dir_name
		cd ..
        fi
done