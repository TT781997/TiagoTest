#! /bin/bash

SESSION_NAME='adminrole'

ROLE_ARN=$(aws iam list-roles --query "Roles[?RoleName == '${SESSION_NAME}'].[RoleName, Arn]" | grep arn | sed -r 's/"//g' | sed 's/ //g')
ROLE_OUTPUT=$(aws sts assume-role --role-arn "${ROLE_ARN}" --role-session-name "${SESSION_NAME}")
aws sts assume-role --role-arn "${ROLE_ARN}" --role-session-name "${SESSION_NAME}"
export AWS_ACCESS_KEY_ID=$(echo ${ROLE_OUTPUT} | jq -r .Credentials.AccessKeyId)
export AWS_SECRET_ACCESS_KEY=$(echo ${ROLE_OUTPUT} | jq -r .Credentials.SecretAccessKey)
export AWS_SESSION_TOKEN=$(echo ${ROLE_OUTPUT} | jq -r .Credentials.SessionToken)

aws sts get-caller-identity

#unset AWS_ACCESS_KEY_ID AWS_SECRET_ACCESS_KEY AWS_SESSION_TOKEN