#!/bin/sh
# assigment 1

if [ $# -eq 0 ]; then
	echo "no parameters"
	exit 1
fi

if [ $# -ne 2 ]; then
	echo "any parameter passed"
	exit 1
fi

filesdir=$1
searchstr=$2

if [ ! -d $filesdir ]; then
	echo "$filesdir is not a directory"
	exit 1
fi

num_of_files=$(find $filesdir -type f | wc -l)
files=$(find $filesdir -type f)

num_of_matching_lines=0

for file_name in $files; do
	if [ -f $file_name ]; then
		# cat $file_name
		# echo $searchstr
				
		count=$(grep -c "$searchstr" $file_name)
		
		num_of_matching_lines=$((num_of_matching_lines+count))
	fi
done

echo "The number of files are $num_of_files and the number of matching lines are $num_of_matching_lines"

