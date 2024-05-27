# terraform-s3module
This git repo is all about managing the AWS S3 bucket using Terraform. Terraform provides three S3 resource

aws_s3_bucket
aws_s3_bucket_object
aws_s3_bucket_public_access_block

AWS S3 bucket supports versioning, replication, encryption, ACL (access control list), and bucket object policy. Here is the list of S3 tasks which we are going to complete using Terraform: 

Setting up AWS Access Credentials (prerequisite).
Using aws_s3_bucket resource to create S3 Bucket.
Uploading files to S3 bucket using aws_s3_bucket_object.
Managing ACL (Access Control List) using aws_s3_bucket_public_access_block.
Deleting the S3 bucket using Terraform.