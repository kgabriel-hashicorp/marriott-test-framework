#This test takes ~14 mins to run
// [elasticache] terraform test                                                                  14:15:25  ☁  initial-commit ☂ ✖ ✭
// tests/elasticache.tftest.hcl... in progress
//   run "create_elasticache_redis"... pass
// tests/elasticache.tftest.hcl... tearing down
// tests/elasticache.tftest.hcl... pass

// Success! 1 passed, 0 failed.
// [elasticache]                                                                                 14:29:19  ☁ 


run "create_elasticache_redis" {
  command = apply

  variables {
    node_type  = "cache.t3.micro"
    cluster_id = "test-redis-cluster"
  }
}
