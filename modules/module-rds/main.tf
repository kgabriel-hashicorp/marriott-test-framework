provider "aws" {
  region = var.region
}

module "my_rds" {
  source               = "terraform-aws-modules/rds/aws"
  version              = "6.6.0"
  identifier           = var.identifier
  engine               = var.engine_name
  major_engine_version = var.major_engine_version
  family               = var.family
  instance_class       = var.instance_class
  allocated_storage    = 20
  username             = "test"
  password             = "password"
  skip_final_snapshot  = true
}
