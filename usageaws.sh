#!/bin/bash
#####################
#Author: Rohan Raj
#Date: 30-March-2025
#This script will report AWS resource usage
#AWS S3
#AWS EC2
#AWS Lambda
#AWS IAM users
set -x

#list S3 buckets
aws s3 ls

#list lambda functions
aws lambda list-functions
