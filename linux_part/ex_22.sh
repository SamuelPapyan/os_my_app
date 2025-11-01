read -p "First String: " a
read -p "Second String: " b
if [ $a != $b ]; then
	echo The two strings are different
else
	echo The two strings are equal
fi
