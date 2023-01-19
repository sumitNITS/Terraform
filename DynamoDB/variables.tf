variable "access_key" {
        description = "Access key to AWS console"
}
variable "secret_key" {
        description = "Secret key to AWS console"
}
variable "region"{
description = "AWS Deployement Region"
default = "ap-south-1"
}
variable "table_name" {
  description = "Dynamodb table name (space is not allowed)"
  default = "Music_Table"
}
variable "table_billing_mode" {
  description = "Controls how you are charged for read and write throughput and how you manage capacity."
  default = "PAY_PER_REQUEST"
}
variable "table_stream" {
  description = "Indicates whether Streams are to be enabled or disabled"
  default = true
}
variable "table_stream_view" {
  description = "When an item in the table is modified, StreamViewType determines what information is written to the table's stream. Valid values are KEYS_ONLY, NEW_IMAGE, OLD_IMAGE, NEW_AND_OLD_IMAGES"
  default = "KEYS_ONLY" 
}
variable "environment" {
  description = "Name of environment"
  default = "Testing"
}
