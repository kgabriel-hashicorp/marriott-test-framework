
#db.t3.medium
#the entire run took 22 mins
// [modules] terraform test                                                                      9:48:28  ☁  initial-commit ☂ ⚡ ✭
// tests/docdb.tftest.hcl... in progress
//   run "create_doc_db"... pass
// tests/docdb.tftest.hcl... tearing down
// tests/docdb.tftest.hcl... pass

// Success! 1 passed, 0 failed.
// [modules]                                                                                     10:12:07  ☁  initial-commit ☂ ✖ ✭
run "create_doc_db" {
    command = apply

    variables {
        docdb_instance_class = "db.t3.medium"
        family = "docdb5.0"
    }
}

