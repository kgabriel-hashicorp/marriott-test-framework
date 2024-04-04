# Description

These are the Elasticache test cases using Terraform Test

- `elasticache-mocks.tftest.hcl`
  - Creates a mock test of deploying a single region and global elasticache cluster

- `elasticache-regional-global.tftest.hcl`
    - Deploys a single region and global Elasticache cluster. Checks the global replication group is using the primary replication group and the secondary replication group is using the global replication group id.
# Usage

To run the test you need to be in the root folder of your module.

* `terraform test` : Runs everything unde the /tests folder

* `terraform test -filter=<.tftest.hcl file>` : Runs a particular test file

* `terraform test -verbose` : pints outs the plan/apply details

# Details

