output "acl_id" {
  value = concat(alicloud_sag_acl.acl.*.id, [""])[0]
}

output "acl_rule_id" {
  value = concat(alicloud_sag_acl_rule.acl_rule.*.id, [""])[0]
}
