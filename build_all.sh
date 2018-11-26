#!/bin/bash 

usage: "./build_all.sh ENV \n dev, uat, prod are the available environments."


if [ -z "$1" ]
  then 
    echo $usage
	exit -1
fi

npm install
serverless deploy -v
