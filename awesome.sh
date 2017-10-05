k=$1
re='^[0-9]+$'
if [[ $k == "" ]]; then
  #statements
  echo "Please enter an input try again"
  exit

fi
if [ $k == "--help" ]; then
  #statements
  echo "1) This program will find all sub-directories containing more than K files"
  echo "2) Torun this do ./awesome.sh k"
  echo "3) K is a number"
  exit
fi
if ! [[ $k =~ $re ]] ; then
   echo "error: wrong input!" >&2;
   exit

 else
   printed="0"
   for i in `ls`;
   do
     #statements
     count=$(ls $i | wc -l)
     if [ $count -gt $k ];
     then
       #statements
       echo $i
       printed=1
     fi
    done
    if [ $printed == "0" ]; then
      echo "No sub-directories containing more than" $k "files"
    fi
fi
