variable "namespace" {
  type        = string
  default     = ""
  description = "Namespace, which could be your organization name or abbreviation, e.g. 'eg' or 'cp'"
}

variable "environment" {
  type        = string
  default     = ""
  description = "Environment, e.g. 'prod', 'staging', 'dev', 'pre-prod', 'UAT'"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Additional tags (e.g. `map('BusinessUnit','XYZ')`"
}

variable "users" {
  type        = any
  description = <<EOT
Map of the IAM users to be created with additional resources
Expected value for the `users` is a map of users. The map key is the name of the user and the value is another map with several **Optional** keys:</li>
<ul>
<li>path:</li>(**Optional**, default `/`) Path in which to create the user
<li>permissions_boundary:</li>(**Optional**) The ARN of the policy that is used to set the permissions boundary for the user
<li>additional_tags:</li>(**Optional**) Additional key-value mapping of tags for the IAM user
<li>pgp_key:</li>Either a base-64 encoded PGP public key, or a keybase username in the form `keybase:</li>some_person_that_exists`, for use in the `encrypted_secret` output attribute.
<li>access_key_enabled:</li>(**Optional**, default `false`) Provides access key generation, pgp_key must be specified when enabled.
<li>access_key_status:</li>(**Optional**, default active) The access key status to apply. Valid values are Active and Inactive.
<li>login_enabled:</li>(**Optional**, default `false`) Provides passowrd generation.
<li>login_password_length:</li>(**Optional**, default `20`) The length of the generated password on resource creation. Only applies on resource creation. Drift detection is not possible with this argument.
<li>login_reset_required:</li>(**Optional**, default `true`) Whether the user should be forced to reset the generated password on resource creation. Only applies on resource creation. Drift detection is not possible with this argument.
<li>ssh_key_enabled:</li>(**Optional**, default `false`) Uploads an SSH public key and associates it with the specified IAM user.
<li>ssh_key_encoding:</li>Specifies the public key encoding format to use in the response. To retrieve the public key in ssh-rsa format, use SSH. To retrieve the public key in PEM format, use PEM. Required only when `ssh_key_enabled` is enabled.
<li>ssh_public_key:</li>The SSH public key. The public key must be encoded in ssh-rsa format or PEM format. Required only when `ssh_key_enabled` is enabled.
<li>ssh_key_status:</li>(**Optional**, default active) The status to assign to the SSH public key. Active means the key can be used for authentication with an AWS CodeCommit repository. Inactive means the key cannot be used.
<li>policy_arn:</li>(**Optional**, default `[]`) Attaches a Managed IAM Policy to an IAM user.
<li>groups:</li>(**Optional**, default `[]`) The IAM Group name to attach the list of users to.
</li>
EOT
}

variable "user_force_destroy" {
  type        = bool
  default     = false
  description = <<EOT
When destroying user, destroy even if it has non-Terraform-managed IAM access keys, login profile or MFA devices. 
Without force_destroy a user with non-Terraform-managed access keys and login profile will fail to be destroyed.
EOT
}

