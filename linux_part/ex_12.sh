read -p "a = " a
read -p "b = " b
if [ $a -ne $b ]; then
	echo "Not Equal"
else
	echo Equal
fi
