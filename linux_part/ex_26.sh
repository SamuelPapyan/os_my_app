if [ -r "$1" ]; then
	echo The file has read access
else
	echo "The file doesn't have read access"
fi
