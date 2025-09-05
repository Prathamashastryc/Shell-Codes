display_perms()
{
 r=`ls -l $1 | cut -c 2`
 w=`ls -l $1 | cut -c 3`
 x=`ls -l $1 | cut -c 4`
 
 echo "Owner Perms"
 if [ "$r" = "r" ]
 then 
   echo "Read"
 else 
   echo "NO Read"
fi

if [ "$w" = "w" ]
 then 
   echo "Write"
 else 
   echo "NO Write"
fi

if [ "$x" = "x" ]
 then 
   echo "Execute"
 else 
   echo "NO Execute"
fi

 r=`ls -l $1 | cut -c 5`
 w=`ls -l $1 | cut -c 6`
 x=`ls -l $1 | cut -c 7`
 
 echo "Group Perms"
 if [ "$r" = "r" ]
 then 
   echo "Read"
 else 
   echo "NO Read"
fi

if [ "$w" = "w" ]
 then 
   echo "Write"
 else 
   echo "NO Write"
fi

if [ "$x" = "x" ]
 then 
   echo "Execute"
 else 
   echo "NO Execute"
fi
 r=`ls -l $1 | cut -c 8`
 w=`ls -l $1 | cut -c 9`
 x=`ls -l $1 | cut -c 10`
 
 echo "Others Perms"
 if [ "$r" = "r" ]
 then 
   echo "Read"
 else 
   echo "NO Read"
fi 

if [ "$w" = "w" ]
 then 
   echo "Write"
 else 
   echo "NO Write"
fi

if [ "$x" = "x" ]
 then 
   echo "Execute"
 else 
  echo "NO Execute"
fi
}

echo "Enter 2 Filename:"
read file1 file2

if [ -e $file1 -a -e $file2 ]
 then 
   p1=`ls -l $file1 | cut -c 2-10`
   p2=`ls -l $file2 | cut -c 2-10`

if [ "$p1" = "$p2" ]
 then 
   echo "Same Perms"
   display_perms $file1
 else
   echo "Diff Perms"
   display_perms $file1
   display_perms $file2
fi
else
  echo "Invalid files"
fi
exit
  
