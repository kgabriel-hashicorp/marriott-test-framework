variables {
  instance_class      = "db.t3.micro"
  skip_final_snapshot = true
  database_name       = "testdb"
}

run "check_db_name" {

  command = plan
  assert {
    condition     = aws_db_instance.default.db_name == "testdb"
    error_message = "The database name is not correct"
  }
}


run "check_instance_class_valid" {

  command = plan

  module {
    source = "./tests/load"
  }

  variables {
    engine         = run.check_db_name.engine
    instance_class = run.check_db_name.instance_class
    region         = run.check_db_name.region
    engine_version = run.check_db_name.engine_version
    storage_type   = run.check_db_name.storage_type
  }



}

run "check_db_is_available" {
  assert {
    condition     = aws_db_instance.default.status == "available"
    error_message = "The database is not available"
  }
}


