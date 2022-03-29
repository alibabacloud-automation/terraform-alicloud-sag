resource "alicloud_sag_acl" "acl" {
  count       = var.create_acl ? 1 : 0
  name        = var.acl_name
}
resource "alicloud_sag_acl_rule" "acl_rule" {
  count             = var.create_acl_rule ? 1 : 0
  acl_id            = local.this_sag_acl_id
  description       = var.rule_description
  policy            = var.policy
  ip_protocol       = var.ip_protocol
  direction         = var.direction
  source_cidr       = var.source_cidr
  source_port_range = var.source_port_range
  dest_cidr         = var.dest_cidr
  dest_port_range   = var.dest_port_range
  priority          = var.priority
}
