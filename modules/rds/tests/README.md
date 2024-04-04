# Description

These are the RDS test cases using Terraform Test

- `rds-mocks.tftest.hcl`
  - Creates a mock test of deploying an RDS instance and checks, given the engine, engine version, instance class and storage stype, is orderable

- `rds.tftest.hcl`
    - Deploys an RDS instance and checks, given the engine, engine version, instance class and storage stype, is orderable and checks the RDS instance is available.
# Usage

To run the test you need to be in the root folder of your module.

* `terraform test` : Runs everything unde the /tests folder

* `terraform test -filter=<.tftest.hcl file>` : Runs a particular test file

* `terraform test -verbose` : pints outs the plan/apply details

# Details

