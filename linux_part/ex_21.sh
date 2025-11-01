read -p "First String: " a
read -p "Second String: " b
if [ $a = $b ]; then
	echo Two strings are equal
else
	echo Two strings are different
fi
