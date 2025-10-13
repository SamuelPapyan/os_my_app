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

