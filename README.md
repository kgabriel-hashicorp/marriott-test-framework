
# Marriott Test Framework
This repository will contain the test cases for the following AWS reources
- RDS-Classic
- DocumentDB
- Aurora
- ElastiCache(redis)

The main test paths are:
- Ensuring the resource deploy
- Enabling a global cluster for DocDB, ElastiCache and Aurora

## Usage

- The resources are separated into different folders under modules. 
- The test cases and code is found under the `/tests` folder per module

### How to run
1. You must have at least 1.7 version of Terraform
2. Go to the specific resource under the module you want to test and run
`terraform test`

Note: More details/instructions is available on the tests README.mds
<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END_TF_DOCS -->

## Reference

## CI Checks

You will need to have GitHub Actions available for this repository.

## Contributing

* Commit messages and PR titles must follow [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/)
* When writing commit messages note the following will impact:
    * PR Title should have the correct 

    Example PR Title:

        fix: fix a typo in the code

* Pull requests will need to be reviewed by the CODEOWNERS.

## Maintainers
CODEOWNERS file contain the maintainers of this repository
This can also include a link to a [Slack] Channel 
