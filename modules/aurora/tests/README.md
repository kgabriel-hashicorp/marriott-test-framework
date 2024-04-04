# Description

These are the Aurora test cases using Terraform Test

- `aurora-global-regional-mock.tftest.hcl`
  -  A test that mocks the path for either a single region or global cluster deployment
- `aurora-single-region.tftest.hcl`
  - Deploys an aurora cluster in a single region
* `check-docdb-instance-class.tftest.hcl`
  - Checks if the the Aurora cluster to be deployed, given the engine version, cluster instance class and engine, is valid. This will fail if the combination of the 3 is not valid in AWS.

# Usage

To run the test you need to be in the root folder of your module.

* `terraform test` : Runs everything unde the /tests folder

* `terraform test -filter=<.tftest.hcl file>` : Runs a particular test file

* `terraform test -verbose` : pints outs the plan/apply details

# Details

