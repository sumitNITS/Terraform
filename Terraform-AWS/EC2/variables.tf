variable "access_key" {
  description = "Access key to AWS console"
}
variable "secret_key" {
  description = "Secret key to AWS console"
}
variable "region"{
  description = "AWS Deployement Region"
}
variable "ami" {
    description = "AMI of the instance"
}
variable "subnet_id" {
    description = "Subnet of the network"
}
variable "vpc_security_group_ids" {
    description = "Security group id of the network"
}
variable "instance_type" {
    description = "Instance type of the instance"
}
variable "key_name" {
    description = "Key name of the instance"
}
variable "vpc_id" {
    description = "VPC id of the network"
}

