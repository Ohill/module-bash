tasks=$(echo $1 | tr " " "\n")
for i in $tasks
do
 ls -R | grep -Fi $i || echo 'the searched PATH is unexisting'
done