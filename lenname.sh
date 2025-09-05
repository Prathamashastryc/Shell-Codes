echo "Enetr the  string:"
read string
if [ -z "$string" ]
then 
echo "Null String"
else
z=`expr "$string" : '.*'`
echo "String Length is:$z"
fi
if [ $z -ge 6 ]
then 
echo "First 3 Characters:"
z=`expr "$string" : '\(...\).*'`
echo "$z"
echo "Last 3 Characters:"
x=`expr "$string" : '.*\(...\)'`
echo "$x"
echo "Enter the character:"
read ch
z=`expr "$string" : '[^'$ch']*'$ch''`
echo "$z"
fi
