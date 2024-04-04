<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.42.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_db_instance.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_instance) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_database_name"></a> [database\_name](#input\_database\_name) | n/a | `string` | `"mydb"` | no |
| <a name="input_engine"></a> [engine](#input\_engine) | n/a | `string` | `"mysql"` | no |
| <a name="input_engine_version"></a> [engine\_version](#input\_engine\_version) | n/a | `string` | `"5.7"` | no |
| <a name="input_instance_class"></a> [instance\_class](#input\_instance\_class) | n/a | `string` | `"db.r4.large"` | no |
| <a name="input_parameter_group_name"></a> [parameter\_group\_name](#input\_parameter\_group\_name) | n/a | `string` | `"default.mysql5.7"` | no |
| <a name="input_region"></a> [region](#input\_region) | n/a | `string` | `"us-east-1"` | no |
| <a name="input_storage_type"></a> [storage\_type](#input\_storage\_type) | n/a | `string` | `"gp2"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_engine"></a> [engine](#output\_engine) | n/a |
| <a name="output_engine_version"></a> [engine\_version](#output\_engine\_version) | n/a |
| <a name="output_instance_class"></a> [instance\_class](#output\_instance\_class) | n/a |
| <a name="output_region"></a> [region](#output\_region) | n/a |
| <a name="output_storage_type"></a> [storage\_type](#output\_storage\_type) | n/a |
<!-- END_TF_DOCS -->