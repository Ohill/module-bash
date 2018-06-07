cmd="$1"
shift
for i in $@
do
eval "$cmd $i"
done
