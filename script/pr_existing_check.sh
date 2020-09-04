#!/bin/sh

echo ARGV

if [ $CIRCLE_BRANCH = "develop" -o $CIRCLE_BRANCH = "master" ]; then
  exit 0
elif [ -n "$CIRCLE_PULL_REQUEST" ]; then
  exit 0
else
  echo "If a pull request has not been created, CI will not be executed"
  exit 1
fi
