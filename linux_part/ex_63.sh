#!/usr/bin/bash

arr=(1 2 4 5 5)

arr+=(6 8 apple android)

for i in ${arr[@]}; do
	echo $i
done
