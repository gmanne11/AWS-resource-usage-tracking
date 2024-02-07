#! /bin/bash
######
set -e
set -x
set -o pipefail 

###
# Author: Vivek Manne
# Version: 1 
#
###
# This script will report the AWS resource utilization
# AWS EC2
# AWS S3
# AWS LAMBDA
# AWS IAM 

# list s3 buckets
echo "print list of s3 buckets"
aws s3 ls > ResourceTracker

# list ec2 instances 
echo "print list of ec2 nodes"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'  >> ResourceTracker

# list lambda 
echo "print list of lambda fucntions"
aws lambda list-functions >> ResourceTracker

# list IAM users 
echo "print list of IAM users"
aws iam list-users >> ResourceTracker


