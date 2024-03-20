
#db.t3.medium
#the entire run took 22 mins
// [modules] terraform test                                                                      9:48:28  ☁  initial-commit ☂ ⚡ ✭
// tests/docdb.tftest.hcl... in progress
//   run "create_doc_db"... pass
// tests/docdb.tftest.hcl... tearing down
// tests/docdb.tftest.hcl... pass

// Success! 1 passed, 0 failed.
// [modules]                                                                                     10:12:07  ☁  initial-commit ☂ ✖ ✭

#takes ~20-25 mins to create the resources 21:44PM completed creation (pass)
#Start of test: 21:24
#Completed Creation: 21:44
#teardown completed: 22:09PM
#total time: 45 mins
variables {
  docdb_instance_class          = "db.r5.large"
  family                        = "docdb5.0"
  primary_cluster_identifier    = "test-primary-cluster"
  primary_instance_identifier   = "test-primary-instance"
  secondary_cluster_identifier  = "test-secondary-cluster"
  secondary_instance_identifier = "test-secondary-instance"
  skip_final_snapshot           = true
}

##if enable_global_cluster = true 

run "create_doc_db_global" {
  command = apply

  variables {

    enable_global_cluster = true
  }
}
