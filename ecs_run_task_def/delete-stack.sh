#!/usr/bin/env bash

. bash-arguments.sh

aws cloudformation delete-stack     \
    --region $REGION                \
    --stack-name $STACK_NAME