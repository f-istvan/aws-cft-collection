#!/usr/bin/env bash

. cft-arguments.sh

aws cloudformation validate-template --template-body $TEMPLATE

aws cloudformation update-stack     \
    --region $REGION                \
    --stack-name $STACK_NAME        \
    --capabilities CAPABILITY_IAM   \
    --template-body $TEMPLATE       \
    --parameters $PARAMS