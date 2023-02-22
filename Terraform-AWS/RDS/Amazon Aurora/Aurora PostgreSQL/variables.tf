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
variable "engine_name" {
  description = "Name of the database engine"
  default = "aurora-postgresql"
}
variable "engine_ver" {
  description = "Version of the database engine"
  default = "11.12"
}
variable "cluster_name" {
  description = "Name of the DB cluster"
  default = "test-aurora-postgresql-cluster"
}
variable "db_name" {
  description = "Name of the DB"
  default = "testdb"
}
variable "db_user" {
  description = "Master username for the DB"
  default = "testuser"
}
variable "db_pass" {
  description = "Master password for the DB"
  default = "example12345" 
}
variable "multi_az" {
  description = "Availability zones"
  default = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
}
variable "db_subnet" {
  description = "Subnet group for the DB"
  default = "default"
}
variable "sec_grp" {
  description = "VPC security group for the DB"
  default = ["sg-00ad403c7b89615c9"]
}
variable "db_port" {
  description = "Port for the DB"
  default = "5432"
}
variable "ins_class" {
  description = "Instance class for the DB"
  default = "db.r5.large"
}
variable "del_protection" {
  description = "Whether to protect the DB cluster from accidental deletion or not"
  default = false
}
variable "database_auth" {
  description = "Whether to enable database authentication or not"
  default = false
}
variable "storage_encryp" {
  description = "Whether to enable storage encryption or not"
  default = false
}
variable "skip_snap" {
  description = "Determines whether to skip from final DB snapshot creation before the DB instance is deleted"
  default = true
}
/*
variable "snap_identifier" {
  description = "The name of our final DB snapshot when this DB instance is deleted. Must be provided if skip_final_snapshot is false"
  default = "test-aurora-postgresql-cluster-final-snapshot"
}
*/
variable "environment" {
  description = "Name of environment"
  default = "Test"
}
variable "writerinst_count" {
  description = "Number of writer instance required"
  default = "1"
}
variable "readerinst_count" {
  description = "Number of reader instance required"
  default = "1"
}
