# AFTP-DEMO
Demo for Automation for the People


## Getting Started 
Clone repo and execute build-all.sh. The possible environment options are dev, uat, or prod.

```
./build-all.sh dev  
```

### Prerequisites
# Clone git repo 
```
git clone https://github.com/warpedcodemonkey/aftp-demo.git
```
# Install serverless cli (First time only)
```
npm install -g serverless
```
  
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