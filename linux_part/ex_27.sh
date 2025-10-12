if [ -w "$1" ]; then
	echo The file has write access
else
	echo "The file doesn't have write access"
fi
