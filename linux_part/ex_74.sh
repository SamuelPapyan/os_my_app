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

