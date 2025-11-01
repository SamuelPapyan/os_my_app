read -p "Enter a path: " p
if [ -d "$p" ]; then
	echo The path is a directory
else
	echo "The path is not exists or it's not a directory"
fi
