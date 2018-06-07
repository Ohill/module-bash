if  [ -z $2 ]
then
  exit 1
fi
file=$(basename "$2")
echo "$file" &&  grep -n "$1" $2 | cut -d : -f 1

