read -p "num = " num
if [[ $num -gt 0 && $num -gt 10 ]]; then
	echo "The number is possitive and greater than 10"
else
	echo The number must be positive and greater than 10
fi
