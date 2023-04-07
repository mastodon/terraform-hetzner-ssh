# terraform-hetzner-ssh

Terraform module for managing SSH keys in Hetzner.

Simplifies the process of importing SSH keys separate from other infrastructure so it can function as a dependency, and applies correct metadata (such as labels).

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_hcloud"></a> [hcloud](#requirement\_hcloud) | ~> 1.31.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_hcloud"></a> [hcloud](#provider\_hcloud) | ~> 1.31.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [hcloud_ssh_key.admin_keys](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/ssh_key) | resource |
| [hcloud_ssh_key.user_keys](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/ssh_key) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_admin_keys"></a> [admin\_keys](#input\_admin\_keys) | Name and public key for all admins | <pre>list(object({<br>    name = string<br>    key  = string<br>  }))</pre> | `[]` | no |
| <a name="input_user_keys"></a> [user\_keys](#input\_user\_keys) | Name and public key for all users | <pre>list(object({<br>    name = string<br>    key  = string<br>  }))</pre> | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_admin_key_fingerprints"></a> [admin\_key\_fingerprints](#output\_admin\_key\_fingerprints) | Hetzner IDs for admin SSH keys |
| <a name="output_admin_key_ids"></a> [admin\_key\_ids](#output\_admin\_key\_ids) | Hetzner IDs for admin SSH keys |
| <a name="output_user_key_fingerprints"></a> [user\_key\_fingerprints](#output\_user\_key\_fingerprints) | Hetzner IDs for user SSH keys |
| <a name="output_user_key_ids"></a> [user\_key\_ids](#output\_user\_key\_ids) | Hetzner IDs for user SSH keys |
