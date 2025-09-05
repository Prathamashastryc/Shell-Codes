if [ $# -eq 0 ];then
echo "NO Arg"
else
grep "$1" "$2"
fi

