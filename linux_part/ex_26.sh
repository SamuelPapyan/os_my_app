read -p "Enter a file path: " f

if [ -r "$f" ]; then
	echo The file has read access
else
	echo "The file doesn't have read access"
fi
