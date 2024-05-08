variable "region" {
  default = "us-east-1"
}

variable "engine" {
  default = "mysql"
}

variable "parameter_group_name" {
  default = "default.mysql5.7"
}

variable "engine_version" {
  default = "5.7.44"
}

variable "instance_class" {
  default = "db.r4.large"
}

variable "database_name" {
  default = "mydb"
}

variable "storage_type" {
  default = "gp2"
}
