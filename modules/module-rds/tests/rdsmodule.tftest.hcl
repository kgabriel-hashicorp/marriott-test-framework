variables {
  instance_class      = "db.t3.micro"
  skip_final_snapshot = true
  identifier       = "testdb"
}

run "check_db_name" {
  command = plan
  
  assert {
    condition     =  module.my_rds.db_instance_identifier == "testdb"
    error_message = "The database name is not correct"
  }
}


#this will create an RDS instance and check that that the status is available
run "check_db_status" {

  
  assert {
    condition     =  module.my_rds.db_instance_status == "available"
    error_message = "The database name is not correct"
  }
}


