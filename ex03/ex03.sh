if [ -z  $1 ]
then
  exit 1
fi
file=$1
shift
for i in $@
do
  echo "$i $(grep  "$i"  $file -c)" &&  grep -n "$i" $file | cut -d : -f 1
done
