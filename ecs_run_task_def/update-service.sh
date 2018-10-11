#!/usr/bin/env bash

. cft-arguments.sh

aws ecs update-service      \
    --region $REGION        \
    --service $SERVICE_NAME \
    --force-new-deployment