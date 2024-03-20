variable "cluster_id" {
  description = "Id to assign the new cluster"
  default     = "redis-cluster"
}

variable "node_groups" {
  description = "Number of nodes groups to create in the cluster"
  default     = 3
}

variable "region" {
  default = "us-east-1"
}

variable "node_type" {
  default = "cache.m4.large"

}