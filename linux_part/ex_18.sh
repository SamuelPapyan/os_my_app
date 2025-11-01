read -p "a = " a
read -p "b = " b
if ! [[ $a -eq $b ]]; then
    echo "a is NOT equal to b"
else
    echo "a is equal to b"
fi
