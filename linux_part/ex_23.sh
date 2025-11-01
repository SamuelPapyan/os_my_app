read -p "Enter a String: " a
if [ -z $a ]; then
	echo The string is empty
else
	echo The string is: $a
fi
