#!/bin/bash

if [ $# -lt 2 ]
then
	echo "Parameter not specified"
	exit 1
fi

writefile=$1
writestr=$2

echo "$writestr" >$writefile

if ! [ -e $writefile ]
then
	echo "Could not create file"
	exit 1
fi

exit 0
