
# Overview

A example of sending data to [Amazon Simple Queue Service (SQS)](https://aws.amazon.com/sqs/) via an [API Gateway with AWS Integration](https://docs.aws.amazon.com/apigateway/latest/developerguide/getting-started-aws-proxy.html)

[Amazon API Gateway](https://aws.amazon.com/api-gateway/) -> [Amazon Simple Queue Service (SQS)](https://aws.amazon.com/sqs/)

# Create CloudFormation Stack

A sample [create script](create.sh) is included to launch the stack. The stack supports TLS via a certificate generated in [AWS Certificate Manager](https://aws.amazon.com/certificate-manager/). If your DNS is hosted [Amazon Route 53](https://aws.amazon.com/route53/) you can optionally register a DNS record for the API Gateway endpoint.

Make sure you have the [AWS CLI installed](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html) and your AWS Credentials available.


