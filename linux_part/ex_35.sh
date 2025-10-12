a=0
while [ $a -le 10 ];
do
	if [ $a -eq 5 ]; then
		echo Break activated
		break
	fi
	echo $a
	a=$(($a+1))
done
