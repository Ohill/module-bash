case $1 in
  "-e" | "--email")
 val=$(grep -E -o -m 1  "\bcraig@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}\b" $2)
  if [ "$val" = "" ]
  then
 exit 1
  fi
echo $val 
  ;;
 "-u" | "--url")
   val=$(grep -o 'https\?://[^"]\+' $2)
  if [ "$val" = "" ] 
  then
 exit 1
  fi
  echo $val
   ;;
esac
