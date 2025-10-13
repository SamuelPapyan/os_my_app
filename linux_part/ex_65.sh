#!/usr/bin/bash

declare -a row0=(1 2 3 4 5)
declare -a row1=(6 7 8 9 0)
declare -a row2=(apple banana cherry grapes mango)



for i in {0..2};do
	var_name="row$i[@]"
	for x in ${!var_name}; do
		echo $x
	done
done
