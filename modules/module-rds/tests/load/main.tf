terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = var.region
}
variable "region" {}
variable "engine" {}
variable "instance_class" {}
variable "engine_version" {}

data "aws_rds_orderable_db_instance" "test" {
  engine         = var.engine
  instance_class = var.instance_class
  engine_version = var.engine_version
}
