read -p "a = " a
read -p "b = " b
if [ $a -ge $b ]; then
	echo "$a >= $b"
else
	echo "$a < $b"
fi
