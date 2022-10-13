## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.34.0 |
| <a name="provider_external"></a> [external](#provider\_external) | 2.2.2 |
| <a name="provider_http"></a> [http](#provider\_http) | 3.1.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_default_security_group.gitlab](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/default_security_group) | resource |
| [aws_default_vpc.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/default_vpc) | resource |
| [aws_instance.gitlab_instance](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_instance.gitlab_runner](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_ami.ubuntu](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |
| [external_external.registration_token](https://registry.terraform.io/providers/hashicorp/external/latest/docs/data-sources/external) | data source |
| [http_http.clientip](https://registry.terraform.io/providers/hashicorp/http/latest/docs/data-sources/http) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_gitlab_root_password"></a> [gitlab\_root\_password](#input\_gitlab\_root\_password) | gitlab root user password | `string` | n/a | yes |
| <a name="input_instance_gitlab_runner_root_volume_delete_on_termination"></a> [instance\_gitlab\_runner\_root\_volume\_delete\_on\_termination](#input\_instance\_gitlab\_runner\_root\_volume\_delete\_on\_termination) | Delete the root volume on instance termination. | `bool` | `true` | no |
| <a name="input_instance_gitlab_runner_root_volume_type"></a> [instance\_gitlab\_runner\_root\_volume\_type](#input\_instance\_gitlab\_runner\_root\_volume\_type) | The type of data storage: standard, gp2, io1 | `string` | `"gp3"` | no |
| <a name="input_instance_gitlab_runner_size"></a> [instance\_gitlab\_runner\_size](#input\_instance\_gitlab\_runner\_size) | The EC2 instance size | `string` | `"c5.xlarge"` | no |
| <a name="input_instance_root_volume_delete_on_termination"></a> [instance\_root\_volume\_delete\_on\_termination](#input\_instance\_root\_volume\_delete\_on\_termination) | Delete the root volume on instance termination. | `bool` | `true` | no |
| <a name="input_instance_root_volume_type"></a> [instance\_root\_volume\_type](#input\_instance\_root\_volume\_type) | The type of data storage: standard, gp2, io1 | `string` | `"gp3"` | no |
| <a name="input_instance_size"></a> [instance\_size](#input\_instance\_size) | The EC2 instance size | `string` | `"c5.xlarge"` | no |
| <a name="input_instnace_gitlab_runner_root_volume_size"></a> [instnace\_gitlab\_runner\_root\_volume\_size](#input\_instnace\_gitlab\_runner\_root\_volume\_size) | The volume size for the root volume in GiB | `string` | `"15"` | no |
| <a name="input_instnace_root_volume_size"></a> [instnace\_root\_volume\_size](#input\_instnace\_root\_volume\_size) | The volume size for the root volume in GiB | `string` | `"15"` | no |
| <a name="input_project"></a> [project](#input\_project) | name of project | `string` | `"gitlab"` | no |
| <a name="input_project_key"></a> [project\_key](#input\_project\_key) | ssh key name | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | aws region | `string` | `"us-east-1"` | no |
| <a name="input_role_arn"></a> [role\_arn](#input\_role\_arn) | arn aim role | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_instance_public_dns"></a> [instance\_public\_dns](#output\_instance\_public\_dns) | n/a |
| <a name="output_instance_public_ip"></a> [instance\_public\_ip](#output\_instance\_public\_ip) | n/a |
| <a name="output_registration_token"></a> [registration\_token](#output\_registration\_token) | n/a |
