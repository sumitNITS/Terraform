# Code to initialize and use a remote Terraform backend (S3 and DynamoDB) for state and locking instead of a local .tfstate file

terraform {
  backend "s3" {
    bucket = "bucket-name-for-terraform-state"
    key = "path/to/terraform.tfstate" 
    region = "aws-s3-bucket-region"
    encrypt = false # For server side encryption
    dynamodb_table = "dynamodb table name" # For state locking and consistency
  }
}
