#!/bin/sh
# Assignment 1

if [ $# -eq 0 ]; then
	echo "no parameters passed"
	exit 1
fi


if [ ! $# -eq 2 ]; then
	echo "any parameter passed"
	exit 1
fi

filename=$1
string=$2

dir_name=$(dirname $filename)

if [ ! -d $dir_name ]; then
	mkdir -p $dir_name
fi

echo $string > $filename

