#!/usr/bin/env bash

$(aws ecr get-login --no-include-email --region us-west-2)
docker build -t dhw .
docker tag dhw:latest 884819480303.dkr.ecr.us-west-2.amazonaws.com/dhw:latest
docker push 884819480303.dkr.ecr.us-west-2.amazonaws.com/dhw:latest