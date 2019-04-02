#!/bin/bash
declare -a array
read -p "Enter a new word:" new

while [ $new != "quit" ];
do 	
	if [ $new == "list" ] 
		then 
		  	echo ${array[*]}
			read -p "Enter a new word:" new
			continue
	else
		array=(${array[*]} $new)
		echo "Length:"${#array[@]}
		read -p "Enter a new word:" new
	fi
done 

