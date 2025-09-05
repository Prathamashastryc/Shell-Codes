echo "Enter a and b:"
read a b
echo "Enter your choice +,-,*,/:"
read choice
case $choice in 
'+') y=`expr $a + $b`
echo "Result= $y";;
'-') y=`expr $a - $b`
echo "Result= $y";;
'*') y=`expr $a \* $b`
echo "Result= $y";;
'/') if [ $b -eq 0 ]
then
echo "Can't divide"
else
then 
   y=`expr $a \ $b`
echo "Result= $y"
fi;;
*) echo "Invalid"
esac

