read -p "a = " a
read -p "b = " b
if [ $a -gt $b ]; then
	echo "$a > $b"
else
	echo "$a =< $b"
fi
