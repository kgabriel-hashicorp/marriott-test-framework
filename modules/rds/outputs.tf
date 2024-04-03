output "engine" {
  value = aws_db_instance.default.engine
}

output "engine_version" {
  value = aws_db_instance.default.engine_version
}
output "instance_class" {
  value = aws_db_instance.default.instance_class
}

output "region" {
  value = "us-east-1"
}


output "storage_type" {
  value = aws_db_instance.default.storage_type
  
}