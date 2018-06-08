func="$1"
testArg='^-?[0-9]+([.][0-9]+)?$'
shift

#for i in $@
#   do
if  [[ $(echo "$@" | sed '/[a-zA-Z]/g') = "" ]] && [-z $1 ]
   then
        echo "Error.."; exit 1
     fi
#  done




case $func in
  "-s")
    res=0
  for i in $@
  do
   res=$(($res + $i))
  done
  echo "$res"
    ;;
  "-e")
    res=0
    for i  in $@
    do
      if [ $(($i%2)) == 0  ]
      then
      res=$(($res + $i))
    fi
    done
    echo "$res"
    ;;

  "-o")
     res=0
    for i  in $@
    do
      if [ $(($i%2)) == 1  ]
      then
      res=$(($res + $i))
    fi
    done
    echo "$res"
    ;;

  "-m")
res=0
  for i in $@
  do
   res=$(($res + $i))
  done
  echo $(($res/$#))
    ;;

    *) echo 'Error..'; exit 1
   ;;
  esac
