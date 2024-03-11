
# module template
This repository contains the standards we recommend having for a root module in Terraform.

## Usage
What will be this module for?

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

Link to the [ModuleStandardizationPage]

## CI Checks

You will need to have GitHub Actions available for this repository.

TODO: For amex template make sure that the workflows have the correct runs-on value

## Contributing

* Commit messages and PR titles must follow [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/)
* When writing commit messages note the following will impact:
    * PR Title should have the correct [prefix](https://github.com/kgabriel-hashicorp/module-template/blob/main/.github/workflows/validate.yml#L22)
    * Make sure that the first character of the the title (after the prefix is in uppercase)

    Example PR Title:

        fix: Fix a typo in the code

* Pull requests will need to be reviewed by the CODEOWNERS.

## Maintainers
CODEOWNERS file contain the maintainers of this repository
This can also include a link to a [Slack] Channel 

test breaking change