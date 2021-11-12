#!/bin/bash
echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth
# scp -i ~/secrets/labsuser.pem /tmp/.auth ec2-user@10.0.1.34:/tmp/.auth
# scp -i ~/secrets/labsuser.pem ./jenkins/deploy/publish ec2-user@10.0.1.34:/tmp/publish
# ssh -i ~/secrets/labsuser.pem ec2-user@10.0.1.34 "bash /tmp/publish"
scp -i ~/secrets/labsuser.pem /tmp/.auth ec2-user@10.0.1.34:/tmp/.auth
scp -i ~/secrets/labsuser.pem ./jenkins/deploy/publish ec2-user@10.0.1.34:/tmp/publish
ssh -i ~/secrets/labsuser.pem ec2-user@10.0.1.34 "bash /tmp/publish"

