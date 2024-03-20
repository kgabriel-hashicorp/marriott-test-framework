variable "db_cluster_instance_class" {
  default = "db.r4.large"
}

variable "cluster_identifier" {
  default = "demo-cluster"
}

variable "skip_final_snapshot" {
  default = false
}