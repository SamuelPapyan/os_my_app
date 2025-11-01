file=bash_scripts.sh

echo "#!/bin/bash" > $file
echo > $file
for f in ex_*.sh; do
	echo $f >> $file
	echo >> $file
	echo >> $file
	cat $f >> $file
	echo >> $file
	echo >> $file
done
