variable "identifier" {
  type    = string
  default = "myrds"
}

variable "region" {
  type    = string
  default = "us-east-1"

}


variable "engine_name" {
  type    = string
  default = "postgres"
}

variable "major_engine_version" {
  type    = string
  default = "14"

}

variable "family" {
  type    = string
  default = "postgres16"
}


variable "instance_class" {
  type    = string
  default = "db.t4g.large"
}
