#!/bin/bash

STACK_NAME=remote-sqs

REGION=us-east-1

AWS_PROFILE=default

BILLING_CODE=$STACK_NAME

# These three parameters are optional, but if you specify one, the others must
# be set as well.
CERTIFICATE_ARN=
HOSTED_ZONE_NAME=
DOMAIN_NAME=

aws cloudformation create-stack \
  --region $REGION \
  --stack-name $STACK_NAME \
  --template-body file://apig-sqs.cfn.yml \
  --profile $AWS_PROFILE \
  --capabilities CAPABILITY_NAMED_IAM \
  --parameters \
  ParameterKey=BillingCode,ParameterValue=$BILLING_CODE \
  ParameterKey=HostedZoneName,ParameterValue=$HOSTED_ZONE_NAME \
  ParameterKey=DomainName,ParameterValue=$DOMAIN_NAME \
  ParameterKey=CertificateArn,ParameterValue=$CERTIFICATE_ARN


