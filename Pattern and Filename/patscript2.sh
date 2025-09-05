if [ $# -eq 0 ];then
echo "Enter Patter:"
read pattern
echo "Enter Filename:"
read filename
else
pattern=$1
filename=$2
fi
sh patscript1.sh $pattern $filename 
