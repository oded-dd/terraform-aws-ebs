# AWS EBS Volume Terraform module

Terraform module which creates EBS Volume resource on AWS.

These types of resources are supported:

* [EBS Volume](https://www.terraform.io/docs/providers/aws/r/ebs_volume.html)

## Usage

```hcl
module "ebs_volume_per_az" {
  source = "github.com/oded-dd/terraform-aws-ebs"

  ebs_volumes = 1

  # ... omitted
}
```

## Notes
1. Add support for different tags when creating multiple EBS volumes using `ebs_volume_tags` (required by KOPS)

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| azs | (Required) The AZs where the EBS volume will exist | list | - | yes |
| create | (Optional) Whether to create this resource or not | string | `true` | no |
| ebs_volume_tags | (Optional) A mapping of tags to assign to the resource | list | `<list>` | no |
| ebs_volumes | (Optional) Number of EBS volumes to create | string | `1` | no |
| encrypted | (Optional) If true, the disk will be encrypted | string | `false` | no |
| iops | (Optional) The amount of IOPS to provision for the disk | string | `100` | no |
| kms_key_id | (Optional) The ARN for the KMS encryption key | string | `` | no |
| size | (Optional) The size of the drive in GiBs | string | `20` | no |
| snapshot_id | (Optional) A snapshot to base the EBS volume off of | string | `` | no |
| tags | (Optional) A mapping of tags to assign to the resource | map | `<map>` | no |
| type | (Optional) The type of EBS volume | string | `standard` | no |

## Outputs

| Name | Description |
|------|-------------|
| this_ebs_volume_arn | The volume ARN |
| this_ebs_volume_id | The volume ID |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Authors

Module managed by [Oded David](https://github.com/oded-dd).

## License

Apache 2 Licensed. See LICENSE for full details.
