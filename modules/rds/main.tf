provider "aws" {
  region = var.region
}

# Create the RDS Db2 instance, use the data sources defined to set attributes
resource "aws_db_instance" "default" {
  allocated_storage    = 10
  db_name              = var.database_name
  engine               = var.engine
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  username             = "foo"
  password             = "foobarbaz"
  parameter_group_name = var.parameter_group_name
  skip_final_snapshot  = true
  storage_type         = var.storage_type
}