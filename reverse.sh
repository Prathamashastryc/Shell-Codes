echo "Program name: $0"
if [ $# -eq 0 ]
 then exit
 fi 
echo "No of arguments:$#"
echo " The input Arguments are:"
num=1
for i in "$@"
do
echo "Arg$num is $i"
num=`expr $num + 1`
done
echo "Arguments in Reverse Order:"
num=$#
while [ $num -ne 0 ]
do 
 eval echo "Arg$num is \$$num"
num=`expr $num - 1`
done
