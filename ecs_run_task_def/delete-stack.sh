#!/usr/bin/env bash

. cft-arguments.sh

aws cloudformation delete-stack     \
    --region $REGION                \
    --stack-name $STACK_NAME