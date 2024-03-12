variable "region" {
    default = "us-east-1"
}

variable "name" {
    default = "docdbtest"
}

variable "docdb_instance_class" {
    default = "db.r4.large"
}

variable "family" {
    default = "docdb3.6"
  
}

variable "docdb_password" {
    default = "password"
    sensitive = true
}

