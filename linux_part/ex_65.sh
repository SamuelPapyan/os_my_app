#!/usr/bin/bash

for i in 1 2 3; do
	for j in 1 2 3; do
		echo -n "$((i*j))"
	done
	echo
done
