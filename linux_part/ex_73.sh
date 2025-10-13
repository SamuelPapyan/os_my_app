if [ $1 -gt 0 ]; then
	echo "Number is positive"
else
	if [ $1 -lt 0 ]; then
		echo "Number is negative"
	else
		echo "Number is zero"
	fi
fi
