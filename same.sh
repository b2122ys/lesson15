#!/bin/bash

if [ $# -ne 2 ];
then 
	echo "ERROR:PLZ input 2 arguments"
	exit 1
fi

if [ $1 = $2 ];
then
echo "same"
else
	echo "not same"
fi
