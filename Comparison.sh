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
		hisat2  --dta -t -x SWO.v3.0_tran  -1  ${Array[0]} -2 ${Array[1]}  -S $dir_name.sam 
		rm -r $dir_name
		samtools view -bS $dir_name.sam > $dir_name.bam
		rm $dir_name.sam
		samtools sort -@ 8  -o $dir_name.sorted.bam $dir_name.bam
		rm $dir_name.bam
		stringtie -p 8 -G Reference.gtf -o $dir_name.gtf -e $dir_name.sorted.bam
		rm $dir_name.sorted.bam
		cd ..
        fi
done