#!/usr/bin/env bash

# Script to write log file (populate vars)
LOGDIR=''
LOGNAME=''

echo "Ran script from: ${PWD}"
cd $LOGDIR
echo "Log in path: ${PWD}"

echo "---------------- Write in file -----------------"
if [ -f $LOGNAME ]
then
	echo "today is `date +"%Y-%m-%d-%h"` time" >> text.log
else
	echo "${LOGDIR}/${LOGNAME} not found"
fi

