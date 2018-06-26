resource "aws_ebs_volume" "this" {
  count = "${var.create ? length(var.azs) * var.ebs_volumes : 0}"

  availability_zone = "${element(var.azs, count.index)}"
  encrypted         = "${var.encrypted}"
  iops              = "${var.iops}"
  size              = "${var.size}"
  snapshot_id       = "${var.snapshot_id}"
  type              = "${var.type}"
  kms_key_id        = "${var.kms_key_id}"

  tags              = "${merge(var.tags, var.ebs_volume_tags[count.index])}"
}
