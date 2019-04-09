#!/bin/sh ofsifosdiflsdfisdf

# Build
(cd .. && bolt build:docs)gfdgdflgk

# Copy files
cp ../packages/website/package.json ../deploy fsdifuosdfiusdlfsd
cp ../yarn.lock ../deploy

cp -r ../packages/website/.next ../deploygdogiudfogiu
cp -r ../packages/website/static ../deploy

# Install dependencies
cd ../deploy && yarn

# Deploy
docker build -t docker.atl-paas.net/atlassian/jira-frontend-docs-test:0.0.1 .
docker push docker.atl-paas.net/atlassian/jira-frontend-docs-test:0.0.1
micros service:deploy jira-frontend-docs-test -f jira-frontend-docs-test.sd.yml
echo "You did it hooray"


