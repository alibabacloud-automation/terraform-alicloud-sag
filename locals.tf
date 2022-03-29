locals {
  # Get ID of sag resources
  this_sag_acl_id = var.create_acl ? concat(alicloud_sag_acl.acl.*.id, [""])[0] : var.acl_id
}