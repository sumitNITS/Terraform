resource "aws_rds_cluster" "postgresql" {
  #Engine configurations (Aurora POSTGRESQL compatible configuration)
  engine                  = "${var.engine_name}"
  engine_version          = "${var.engine_ver}"

  #Database configurations
  cluster_identifier      = "${var.cluster_name}"
  database_name           = "${var.db_name}"
  master_username         = "${var.db_user}"
  master_password         = "${var.db_pass}" 

  #Availability and durability configuration
  availability_zones      = "${var.multi_az}"

  #Network configurations
  db_subnet_group_name    = "${var.db_subnet}"
  vpc_security_group_ids  = "${var.sec_grp}"
  port                    = "${var.db_port}"

  #Deletion protection
  deletion_protection     = "${var.del_protection}"

  #Authentication
  iam_database_authentication_enabled = "${var.database_auth}"
  
  #Encryption
  storage_encrypted       = "${var.storage_encryp}" 

  #Snapshot configurations
  skip_final_snapshot     = "${var.skip_snap}"
  #final_snapshot_identifier = "${var.snap_identifier}"

  tags = {
    environment = "${var.environment}"
  }
}

#Instance configurations
resource "aws_rds_cluster_instance" "writer" {
  count              = "${var.writerinst_count}"
  cluster_identifier = aws_rds_cluster.postgresql.cluster_identifier
  instance_class     = "${var.ins_class}" 
  engine             = "${var.engine_name}"
  engine_version     = "${var.engine_ver}"
  identifier         = "aurora-postgresql-instance-${count.index+1}"
}
resource "aws_rds_cluster_instance" "reader" {
  count              = "${var.readerinst_count}"
  cluster_identifier = aws_rds_cluster.postgresql.cluster_identifier
  instance_class     = "${var.ins_class}"
  engine             = "${var.engine_name}"
  engine_version     = "${var.engine_ver}" 
  identifier         = "aurora-postgresql-instance-${count.index+2}"
}


