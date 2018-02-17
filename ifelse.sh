#!/bin/bash

while read -p "What file do you want to test ? " filename
do

if [ ! -e "$filename" ]; then
	echo " The file doesn't exist"
	continue
fi

# if file exist then only run below command

ls -ld "$filename"

if [ -L "$filename" ]; then
	echo "$filename is a symnolic link "
elif [ -f "$filename" ]; then
	echo "$filename is a regular file"
elif [ -b "$filename" ]; then
	echo "$filename is bloc device file"
elif [ -c "$filename" ]; then
	echo "$filename is a character device file"
elif [ -d "$filename" ]; then
	echo "$filename is a directory"
elif [ -p "$filename" ]; then
	echo "$filename is a named pipe"
elif [ -S "$filename" ]; then
	echo "$filename is a socket"
else

	echo " I don't know what kind of file is this "
fi
done
