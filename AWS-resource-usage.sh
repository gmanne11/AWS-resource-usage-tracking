#
# This script will define the AWS resources usage
# Author: Vivek
# Date: May 13
#
##################################


set -x


# AWS S3
# AWS EC2
# AWS LAMBDA
# AWS IAM

# list s3 buckets
echo "print list of s3 buckets"
aws s3 ls

# list ec2 instances
echo " printlist of ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceID'

# list of lambda
echo" print list of lambda fucntions"
aws lambda list-functions

# list IAM users
echo " print IAM users"
aws iam list-users
