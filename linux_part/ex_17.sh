read -p "a = " a
read -p "b = " b
if [[ $a -lt 5 || $b -gt 15 ]]; then
    echo "At least one condition is true: a < 5 OR b > 15"
else
    echo "Both conditions are false"
fi
