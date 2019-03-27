#!/bin/bash
index=0
while :
do
	read -p "Enter a new word: " word
	if [ "$word" = "quit" ];then
		break
	elif [ "$word" = "list" ];then
		for j in `seq 0 $index`
		do
			echo -n "${array[$j]} "
		done
		echo ""
	else
		array[$index]=$word
		index=$((index+1))
		echo "Length: $index"
	fi
done
