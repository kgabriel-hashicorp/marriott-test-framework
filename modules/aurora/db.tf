provider "aws" {
  region = "us-east-1"
}

resource "aws_rds_cluster" "postgresql" {
  cluster_identifier      = var.cluster_identifier
  engine                  = "aurora-postgresql"
  availability_zones      = ["us-east-1a", "us-east-1b", "us-east-1c"]
  database_name           = "mydb"
  master_username         = "foobar123"
  master_password         = "barfoo123"
  backup_retention_period = 5
  preferred_backup_window = "07:00-09:00"
  skip_final_snapshot     = var.skip_final_snapshot
}