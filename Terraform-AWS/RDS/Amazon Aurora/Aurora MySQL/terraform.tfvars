access_key  = "access-key-here"
secret_key  = "secret-key-here"
region      = "ap-south-1"
engine_name = "aurora-mysql"
engine_ver = "5.7.mysql_aurora.2.10.2"
cluster_name = "test-aurora-mysql-cluster"
db_name = "testdb"
db_user = "admin"
db_pass = "example12345" 
multi_az = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
db_subnet = "default"
sec_grp = ["sg-05be6d50f4681be46"]
db_port = "3306"
ins_class = "db.r5.large"
del_protection = false
database_auth = false
storage_encryp = false
skip_snap = true
#snap_identifier = "test-aurora-mysql-cluster-final-snapshot"
environment = "Test"
writerinst_count = "1"
readerinst_count = "1"
