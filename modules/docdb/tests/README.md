# Description

These are the DocDB test cases using Terraform Test

- `docdb-global-regional-mock.tftest.hcl`
  -  A test that mocks the path for either a single region or global cluster deployment
- `docdb-single-region.tftest.hcl`
  - Deploys a DocDB cluster in a single region
- `check-docdb-instance-class.tftest.hcl`
  - Checks if the the DocDB cluster to be deployed, given the engine version, cluster instance class and engine, is valid. This will fail if the combination of the 3 is not valid in AWS.
- `docdb-global.tftest`
  - Deploys a DocDB cluster to test and checks if the primary and secondary global cluster identifier match.
  
# Usage

To run the test you need to be in the root folder of your module.

* `terraform test` : Runs everything unde the /tests folder

* `terraform test -filter=<.tftest.hcl file>` : Runs a particular test file

* `terraform test -verbose` : pints outs the plan/apply details

# Details

