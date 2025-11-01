read -p "Enter a path: " p
if [ -p "$f" ]; then
	echo The path is a file
else
	echo "The path is not a file"
fi
