# AFTP-DEMO
Demo for Automation for the People


## Getting Started 
Clone repo and execute build-all.sh. The possible environment options are dev, uat, or prod.

```
./build-all.sh dev  
```

## Prerequisites
## Clone git repo 
```
git clone https://github.com/warpedcodemonkey/aftp-demo.git
```
## Install serverless cli (First time only)
```
npm install -g serverless
```
## Change token in env files.
```
setevn-dev.sh
setevn-uat.sh
setevn-prod.sh

Change export GIT_HUB_TOKEN=CHANGE_ME to export GIT_HUB_TOKEN=TOKEN-PROVIDED
```

## Setup AWS CLI
Follow the documentation at [AWS CLI Configure Documentation](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-getting-started.html)