read -p "num = " num
if [[ $num -lt 5 || $num -gt 15 ]]; then
	echo The number is less than 5 or greater than 15
else
	echo "Some of the conditions are falsed (a < 5 || a > 15)"
fi
