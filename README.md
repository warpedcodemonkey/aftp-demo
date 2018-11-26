#Install serverless cli (First time only)

npm install -g serverless

#Download node dependencies
npm install

#load environment variables for specific environment.
. setenv-uat.sh

#Deploy the template.
serverless deploy -v

#To package template before deploying:
serverless package

#One command deployment 
./build-all.sh ENV 

#ENV options
dev uat or prod