resource "aws_dynamodb_table" "test_dynamodb_table" {
  
  #table configuration
  name           = "${var.table_name}"

  #usage configuration for scalability (PAY_PER_REQUEST or PROVISIONED)
  billing_mode   = "${var.table_billing_mode}"

  #Partition key to spread data across partitions 
  hash_key       = "Artist"
  attribute {
    name = "Artist"
    type = "S"
  }

  #Sort key to enable easy sorting
  range_key      = "SongTitle"    
  attribute {
    name = "SongTitle"
    type = "S"
  }

  #Stream Configuration to write records in near-real time
  stream_enabled = "${var.table_stream}"
  stream_view_type = "${var.table_stream_view}"

  #Time-to-Live to delete expired items from tables automatically to help reduce storage usage and the cost of storing data
  ttl {
    attribute_name = "Music_Table" #Name of the table attribute to store the TTL timestamp in
    enabled = true
  }

  #Point-in-time recovery to protect the tables from accidental write or delete operations, it  provides continuous backups of data for 35 days
  point_in_time_recovery {
    enabled = true
  }

  #To enable encryption at rest using an AWS managed KMS customer master key (CMK)
  server_side_encryption {
    enabled     = true
    #kms_key_arn = "The ARN of the CMK that should be used for the AWS KMS encryption"
  }

  /*
  #Region names for creating replicas for a global DynamoDB table
  replica {
    region_name = "region-name-here"
  }
  */

  tags = {
    environment = "${var.environment}"
  }
}
