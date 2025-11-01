read -p "Enter a file path: " f
if [ -x "$f" ]; then
	echo The file has execute access
else
	echo "The file doesn't have execute access"
fi
