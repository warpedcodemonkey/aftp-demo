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

## Running the application
After running the build-all.sh, you will see output from serverless deploy, you will find the endpoint near the end of the output that looks like:
```
service: aftp-demo
stage: dev
region: us-east-1
stack: aftp-demo-dev
api keys:
  None
endpoints:
  GET - https://SOMENUMBER.execute-api.us-east-1.amazonaws.com/dev/message
functions:
  aftp-demo: aftp-demo-dev-aftp-demo
```

You can test with any restful client you wish. I have included an executable jar to test with as well, which can be tested with:
```
java -jar testaftp.jar https://SOMENUMBER.execute-api.us-east-1.amazonaws.com/dev/message
```

## Cleanup
Execute `sls remove` from the src directory.

## Notes:
	This was done in a hurry.
	Other things to include would be a CodePipeline that would use CodeBuild to fire off the serverless commands to update the stacks when code is pushed to a repo.
	Try putting in the wrong url for the test jar. 

