is_even() {
	num=$1
	if [ $(($num % 2)) -eq 0 ]; then
		return 0
	else
		return 1
	fi
}

read -p "Enter a number: " my_num

if is_even $my_num; then
	echo "$my_num is even"
else
	echo "$my_num is odd"
fi

is_even 5
echo $?
