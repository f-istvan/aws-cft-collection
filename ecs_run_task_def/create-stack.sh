#!/usr/bin/env bash

. bash-arguments.sh

aws cloudformation validate-template --template-body $TEMPLATE

aws cloudformation create-stack     \
    --region $REGION                \
    --stack-name $STACK_NAME        \
    --capabilities CAPABILITY_IAM   \
    --template-body $TEMPLATE       \
    --parameters $PARAMS
