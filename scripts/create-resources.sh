#!/bin/bash

set -e

KEY_ID=$(aws kms create-key \
--description s3securekey \
--query 'KeyMetadata.KeyId' \
--output text)

aws s3api create-bucket \
--bucket $BUCKET_NAME \
--region $REGION \
--create-bucket-configuration LocationConstraint=$REGION

echo "environment created"
