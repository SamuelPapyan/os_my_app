
ex_01.sh


touch script.sh


ex_02.sh


chmod 765 script.sh


ex_05.sh


echo my first data $1 and my second data $2


ex_06.sh


read -p "a = " a
read -p "b = " b
echo "Sum = $((a + b))"


ex_07.sh


read -p "a = " a
read -p "b = " b
echo "a - b = $(($a - $b))"


ex_08.sh


read -p "a = " a
read -p "b = " b
echo "a * b = $(($a * $b))"


ex_09.sh


read -p "a = " a
read -p "b = " b
echo "a / b = $(($a / $b))"


ex_10.sh


read -p "a = " a
read -p "b = " b
echo "a % b = $(($a % $b))"


ex_11.sh


read -p "a = " a
read -p "b = " b
if [ $a -eq $b ]; then
	echo Equal
else
	echo not equal
fi


ex_12.sh


read -p "a = " a
read -p "b = " b
if [ $a -ne $b ]; then
	echo "Not Equal"
else
	echo Equal
fi


ex_13.sh


read -p "a = " a
read -p "b = " b
if [ $a -gt $b ]; then
	echo "$a > $b"
else
	echo "$a =< $b"
fi


ex_14.sh


read -p "a = " a
read -p "b = " b
if [ $a -lt $b ]; then
	echo "$a < $b"
else
	echo "$a >= $b"
fi


ex_15.sh


read -p "a = " a
read -p "b = " b
if [ $a -ge $b ]; then
	echo "$a >= $b"
else
	echo "$a < $b"
fi


ex_16.sh


read -p "a = " a
read -p "b = " b
if [[ $a -lt 15 && $b -gt 15 ]]; then
    echo "Both conditions are true: a < 15 AND b > 15"
else
    echo "One or both conditions are false"
fi


ex_17.sh


read -p "a = " a
read -p "b = " b
if [[ $a -lt 5 || $b -gt 15 ]]; then
    echo "At least one condition is true: a < 5 OR b > 15"
else
    echo "Both conditions are false"
fi


ex_18.sh


read -p "a = " a
read -p "b = " b
if ! [[ $a -eq $b ]]; then
    echo "a is NOT equal to b"
else
    echo "a is equal to b"
fi


ex_19.sh


read -p "num = " num
if [[ $num -gt 0 && $num -gt 10 ]]; then
	echo "The number is possitive and greater than 10"
else
	echo The number must be positive and greater than 10
fi


ex_20.sh


read -p "num = " num
if [[ $num -lt 5 || $num -gt 15 ]]; then
	echo The number is less than 5 or greater than 15
else
	echo "Some of the conditions are falsed (a < 5 || a > 15)"
fi


ex_21.sh


read -p "First String: " a
read -p "Second String: " b
if [ $a = $b ]; then
	echo Two strings are equal
else
	echo Two strings are different
fi


ex_22.sh


read -p "First String: " a
read -p "Second String: " b
if [ $a != $b ]; then
	echo The two strings are different
else
	echo The two strings are equal
fi


ex_23.sh


read -p "Enter a String: " a
if [ -z $a ]; then
	echo The string is empty
else
	echo The string is: $a
fi


ex_24.sh


read -p "Enter a String: " a

if [ $a ]; then
	echo The string is $a
else
	echo The string is empty
fi


ex_25.sh


read -p "First String: " a
read -p "Second String: " b
str="$a$b"
echo $str


ex_26.sh


read -p "Enter a file path: " f

if [ -r "$f" ]; then
	echo The file has read access
else
	echo "The file doesn't have read access"
fi


ex_27.sh


read -p "Enter a file path: " f

if [ -w "$f" ]; then
	echo The file has write access
else
	echo "The file doesn't have write access"
fi


ex_28.sh


read -p "Enter a file path: " f
if [ -x "$f" ]; then
	echo The file has execute access
else
	echo "The file doesn't have execute access"
fi


ex_29.sh


read -p "Enter a path: " p
if [ -p "$f" ]; then
	echo The path is a file
else
	echo "The path is not a file"
fi


ex_30.sh


read -p "Enter a path: " p
if [ -d "$p" ]; then
	echo The path is a directory
else
	echo "The path is not exists or it's not a directory"
fi


ex_31.sh


a=1
while [ $a -le 10 ];
do
	echo $a
	a=$(($a + 1))
done


ex_32.sh


a=10
until [ $a -eq 0 ];
do
	echo $a
	a=$(($a - 1))
done


ex_33.sh


for a in $(seq 1 5); do
	echo $a
done


ex_34.sh


for i in $(seq 1 10); do
	for j in $(seq 11 15); do
		echo "$i$j"
	done
done


ex_35.sh


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


ex_36.sh


echo -e "Hello\nworld"


ex_37.sh


echo -e "NAME\tSURNAME"


ex_38.sh


echo -e "Olleh World\rHello"


ex_39.sh


echo -e "Hello World Of IT \c"


ex_40.sh


echo -e "\\"


ex_41.sh


date


ex_42.sh


who | wc -l


ex_43.sh


uptime -p


ex_44.sh


ls ~


ex_45.sh


du -sh .

ex_46.sh


X=${1:-"default value"}
echo $X


ex_47.sh


echo ${var:="Set now"}

ex_48.sh


: ${1:?"Variable not set!"}

ex_49.sh


MY_VAR=50
echo ${MY_VAR:+"Variable is valued"}

ex_50.sh


MY_VAR=
echo "${MY_VAR:-'No value'}"

ex_51.sh


helloworld() {
	echo Hello World
}

helloworld


ex_52.sh


print_two_things() {
	echo $1 $2
}

print_two_things "Hello World" "OF IT Programmers"


ex_53.sh


sum() {
	echo $(($1 + $2))
}

res=$(sum 1 3)
echo $res


ex_54.sh


is_even() {
	[ $(($1 % 2)) -eq 0 ]; return $?;
}

read -p "Enter a number: " my_num

if is_even $my_num; then
	echo "$my_num is even"
else
	echo "$my_num is odd"
fi

is_even 5
echo $?


ex_55.sh


my_func() {
	echo "Hello World"
}

my_func

unset -f my_func

my_func


ex_56.sh


read -p "Enter a new file: " file
read -p "Enter text: " text

echo $text > $file


ex_57.sh


read -p "Enter a new file: " file
read -p "Enter text: " text

echo $text >> $file


ex_58.sh


read -p "Enter a new file: " file

cat $file


ex_59.sh


read -p "Enter a new file: " file

rm $file


ex_60.sh


read -p "Enter source: " src
read -p "Enter destination: " dest

mv $src $dest


ex_61.sh


#!/usr/bin/bash

arr=(1 2 3 4 5)


ex_62.sh


#!/usr/bin/bash

arr=(1 2 3 5 5)

echo ${arr[@]}


ex_63.sh


#!/usr/bin/bash

arr=(1 2 4 5 5)

arr+=(6 8 apple android)

for i in ${arr[@]}; do
	echo $i
done


ex_64.sh


#!/usr/bin/bash

arr=(1 2 4 5 5)

for i in ${arr[@]}; do
	echo $i
done


ex_65.sh


#!/usr/bin/bash

for i in 1 2 3; do
	for j in 1 2 3; do
		echo -n "$((i*j))"
	done
	echo
done


ex_66.sh


echo $PATH


ex_67.sh


export MY_NAME=Samvel
env


ex_68.sh


export PATH="$PATH:/my/bin"
env


ex_69.sh


my_scope() {
	local x=16
	echo $x
}


ex_70.sh


my_scope() {
	local x=16
	echo $x
}

my_scope
echo $x


ex_71.sh


if [ $1 -gt 0 ]; then
	echo "Number is positive"
fi


ex_72.sh


if [ $1 -gt 0 ]; then
	echo "Number is positive"
else
	echo "Number is negative or zero"
fi


ex_73.sh


if [ $1 -gt 0 ]; then
	echo "Number is positive"
else
	if [ $1 -lt 0 ]; then
		echo "Number is negative"
	else
		echo "Number is zero"
	fi
fi


ex_74.sh


case $1 in
	"hello")
		echo "Hello World"
	;;
	"it")
		echo "IT Programmers"
	;;
	"ex")
		echo $0
	;;
	*)
		echo "There is no corresponding message for $1"
	;;
esac



ex_75.sh


case $1 in
	"copy")
		cp $2 $3
	;;
	"move")
		mv $2 $3
	;;
	"md")
		mkdir $2
	;;
	"create")
		touch $2
	;;
	*)
		echo "There is no corresponding action for $1"
	;;
esac



ex_76.sh


echo $(($1 & $2))


ex_77.sh


echo $(($1 | $2))


ex_78.sh


echo $(($1 ^ $2))


ex_79.sh


echo $(($1 << $2))


ex_80.sh


echo $(($1 >> $2))


