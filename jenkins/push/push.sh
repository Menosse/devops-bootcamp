#!/bin/bash
echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="maven-project"

echo "** Logging in ***"
docker login -u "famcsn2" -p $PASS

echo "*** Tagging image ***"
# docker tag $IMAGE:$BUILD_TAG famcsn2/$IMAGE:$BUILD_TAGx

echo "*** Pushing image ***"
docker push famcsn2/$IMAGE:$BUILD_TAG

