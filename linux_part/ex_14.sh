read -p "a = " a
read -p "b = " b
if [ $a -lt $b ]; then
	echo "$a < $b"
else
	echo "$a >= $b"
fi
