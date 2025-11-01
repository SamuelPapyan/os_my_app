is_even() {
	[ $(($1 % 2)) -eq 0 ]; return $?;
}

read -p "Enter a number: " my_num

if is_even $my_num; then
	echo "$my_num is even"
else
	echo "$my_num is odd"
fi

is_even 5
echo $?
