if [[ $1 -lt 5 || $2 -gt 15 ]]; then
    echo "At least one condition is true: a < 5 OR b > 15"
else
    echo "Both conditions are false"
fi
