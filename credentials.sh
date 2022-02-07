#!/bin/bash
set -e

# This address comes from the Amazon ECS documentation:
# https://docs.aws.amazon.com/AmazonECS/latest/userguide/task-iam-roles.html
curl -o cred.json 169.254.170.2$AWS_CONTAINER_CREDENTIALS_RELATIVE_URI

mkdir -p ~/.aws
cat > ~/.aws/credentials <<EOF
[default]
aws_access_key_id=$(jq -r .AccessKeyId cred.json)
aws_secret_access_key=$(jq -r .SecretAccessKey cred.json)
aws_session_token=$(jq -r .Token cred.json)
EOF
rm cred.json

shift
exec $@
