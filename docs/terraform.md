<!-- BEGIN_TF_DOCS -->
## Documentation


### Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 2.0 |

### Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_labels"></a> [labels](#module\_labels) | Infrastrukturait/tagger/null | 0.1.0 |

### Resources

| Name | Type |
|------|------|
| [aws_iam_access_key.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_access_key) | resource |
| [aws_iam_user.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user) | resource |
| [aws_iam_user_group_membership.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_group_membership) | resource |
| [aws_iam_user_login_profile.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_login_profile) | resource |
| [aws_iam_user_policy_attachment.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_policy_attachment) | resource |
| [aws_iam_user_ssh_key.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_ssh_key) | resource |
| [aws_caller_identity.provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |

### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | Environment, e.g. 'prod', 'staging', 'dev', 'pre-prod', 'UAT' | `string` | `""` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Namespace, which could be your organization name or abbreviation, e.g. 'eg' or 'cp' | `string` | `""` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Additional tags (e.g. `map('BusinessUnit','XYZ')` | `map(string)` | `{}` | no |
| <a name="input_user_force_destroy"></a> [user\_force\_destroy](#input\_user\_force\_destroy) | When destroying user, destroy even if it has non-Terraform-managed IAM access keys, login profile or MFA devices. <br>Without force\_destroy a user with non-Terraform-managed access keys and login profile will fail to be destroyed. | `bool` | `false` | no |
| <a name="input_users"></a> [users](#input\_users) | Map of the IAM users to be created with additional resources<br>Expected value for the `users` is a map of users. The map key is the name of the user and the value is another map with several **Optional** keys:</li><br><ul><br><li>path:</li>(**Optional**, default `/`) Path in which to create the user<br><li>permissions\_boundary:</li>(**Optional**) The ARN of the policy that is used to set the permissions boundary for the user<br><li>additional\_tags:</li>(**Optional**) Additional key-value mapping of tags for the IAM user<br><li>pgp\_key:</li>Either a base-64 encoded PGP public key, or a keybase username in the form `keybase:</li>some_person_that_exists`, for use in the `encrypted_secret` output attribute.<br><li>access\_key\_enabled:</li>(**Optional**, default `false`) Provides access key generation, pgp\_key must be specified when enabled.<br><li>access\_key\_status:</li>(**Optional**, default active) The access key status to apply. Valid values are Active and Inactive.<br><li>login\_enabled:</li>(**Optional**, default `false`) Provides passowrd generation.<br><li>login\_password\_length:</li>(**Optional**, default `20`) The length of the generated password on resource creation. Only applies on resource creation. Drift detection is not possible with this argument.<br><li>login\_reset\_required:</li>(**Optional**, default `true`) Whether the user should be forced to reset the generated password on resource creation. Only applies on resource creation. Drift detection is not possible with this argument.<br><li>ssh\_key\_enabled:</li>(**Optional**, default `false`) Uploads an SSH public key and associates it with the specified IAM user.<br><li>ssh\_key\_encoding:</li>Specifies the public key encoding format to use in the response. To retrieve the public key in ssh-rsa format, use SSH. To retrieve the public key in PEM format, use PEM. Required only when `ssh_key_enabled` is enabled.<br><li>ssh\_public\_key:</li>The SSH public key. The public key must be encoded in ssh-rsa format or PEM format. Required only when `ssh_key_enabled` is enabled.<br><li>ssh\_key\_status:</li>(**Optional**, default active) The status to assign to the SSH public key. Active means the key can be used for authentication with an AWS CodeCommit repository. Inactive means the key cannot be used.<br><li>policy\_arn:</li>(**Optional**, default `[]`) Attaches a Managed IAM Policy to an IAM user.<br><li>groups:</li>(**Optional**, default `[]`) The IAM Group name to attach the list of users to.<br></li> | `any` | n/a | yes |

### Outputs

| Name | Description |
|------|-------------|
| <a name="output_user_access_attributes"></a> [user\_access\_attributes](#output\_user\_access\_attributes) | Map of IAM users access key attributes |
| <a name="output_user_arns"></a> [user\_arns](#output\_user\_arns) | Map of IAM users arn |
| <a name="output_user_console_url"></a> [user\_console\_url](#output\_user\_console\_url) | Console login url |
| <a name="output_user_login_attributes"></a> [user\_login\_attributes](#output\_user\_login\_attributes) | Map of IAM users login profile attributes |
| <a name="output_user_names"></a> [user\_names](#output\_user\_names) | List of IAM users names |
| <a name="output_user_paths"></a> [user\_paths](#output\_user\_paths) | Map of IAM users path |
| <a name="output_user_policy_attributes"></a> [user\_policy\_attributes](#output\_user\_policy\_attributes) | Map of IAM users policy attachment attributes |
| <a name="output_user_ssh_attributes"></a> [user\_ssh\_attributes](#output\_user\_ssh\_attributes) | Map of IAM users ssh key attributes |
| <a name="output_user_uniq_ids"></a> [user\_uniq\_ids](#output\_user\_uniq\_ids) | Map of IAM users uniq ids |

<!-- END_TF_DOCS -->