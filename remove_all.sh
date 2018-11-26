#!/bin/bash 

usage="./remove_all.sh ENV \n dev, uat, prod are the available environments."


if [ -z "$1" ]
  then 
    echo $usage
	exit -1
else
	envfile=${1,}
fi

if [ "$envfile" != "dev" ] && [ "$envfile" != "uat" ] && [ "$envfile" != "prod" ];
   then
    echo $usage
	echo "Failed env check"
	echo "$envfile provided."
	exit -1
fi

. ./setenv-"${envfile}".sh

sls remove --stage $envfile