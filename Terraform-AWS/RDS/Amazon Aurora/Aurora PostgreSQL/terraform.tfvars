access_key  = "access-key-here"
secret_key  = "secret-key-here"
region      = "ap-south-1"
engine_name = "aurora-postgresql"
engine_ver = "11.12"
cluster_name = "test-aurora-postgresql-cluster"
db_name = "testdb"
db_user = "testuser"
db_pass = "example12345" 
multi_az = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
db_subnet = "default"
sec_grp = ["sg-00ad403c7b89615c9"]
db_port = "5432"
ins_class = "db.r5.large"
del_protection = false
database_auth = false
storage_encryp = false
skip_snap = true
#snap_identifier = "test-aurora-postgresql-cluster-final-snapshot"
environment = "Test"
writerinst_count = "1"
readerinst_count = "1"

