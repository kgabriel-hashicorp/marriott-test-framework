terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.42.0"
    }
  }
}

provider "aws" {
  region = var.region
}
variable "region" {}
variable "engine" {}
variable "db_cluster_instance_class" {}
variable "engine_version" {}

#datasource that checks given the combination of engine, instance_class and engine_version, if the db instance is orderable

data "aws_rds_orderable_db_instance" "test" {
  engine         = var.engine
  instance_class = var.db_cluster_instance_class
  engine_version = var.engine_version
}