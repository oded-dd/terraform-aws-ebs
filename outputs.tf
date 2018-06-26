output "this_ebs_volume_id" {
  description = "The volume ID"
  value       = "${concat(aws_ebs_volume.this.*.id, list(""))}"
}

output "this_ebs_volume_arn" {
  description = "The volume ARN"
  value       = "${concat(aws_ebs_volume.this.*.id, list(""))}"
}
