if ! [ -f $1 ]
then
 echo ""
 exit 1
fi
for i in $@;
do
echo "$(awk 'END { print NR }' $i) $(basename "$i")"
done