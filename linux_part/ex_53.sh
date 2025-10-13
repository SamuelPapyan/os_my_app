sum() {
	echo $(($1 + $2))
}

res=$(sum 1 3)
echo $res
