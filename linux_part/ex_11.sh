read -p "a = " a
read -p "b = " b
if [ $a -eq $b ]; then
	echo Equal
else
	echo not equal
fi
