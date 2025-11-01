read -p "Enter a file path: " f

if [ -w "$f" ]; then
	echo The file has write access
else
	echo "The file doesn't have write access"
fi
