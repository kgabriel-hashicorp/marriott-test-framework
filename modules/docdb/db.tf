
provider "aws" {
  region = var.region
}

resource "aws_docdb_cluster_instance" "service" {
  count              = 1
  identifier         = "marriott-${var.name}-${count.index}"
  cluster_identifier = "${aws_docdb_cluster.service.id}"
  instance_class     = "${var.docdb_instance_class}"

  lifecycle {
    postcondition {
      condition = length(self.identifier) < 63
      error_message =  "The identifier must be between 1 and 63 characters long."
    }
   }
}

resource "aws_docdb_cluster" "service" {
  skip_final_snapshot     = true
  cluster_identifier      = "tf-${var.name}"
  engine                  = "docdb"
  master_username         = "tf_${replace(var.name, "-", "_")}_admin"
  master_password         = "${var.docdb_password}"
  db_cluster_parameter_group_name = "${aws_docdb_cluster_parameter_group.service.name}"
}

resource "aws_docdb_cluster_parameter_group" "service" {
  family = var.family
  name = "tf-${var.name}"
}