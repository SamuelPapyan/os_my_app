read -p "a = " a
read -p "b = " b
if [[ $a -lt 15 && $b -gt 15 ]]; then
    echo "Both conditions are true: a < 15 AND b > 15"
else
    echo "One or both conditions are false"
fi
