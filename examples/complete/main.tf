provider "alicloud" {
  region = "cn-shanghai"
}

module "example" {
  source = "../.."

  #alicloud_sag_acl
  create_acl = true
  acl_name   = var.acl_name

  #alicloud_sag_acl_rule
  create_acl_rule   = true
  rule_description  = var.rule_description
  policy            = var.policy
  ip_protocol       = var.ip_protocol
  direction         = var.direction
  source_cidr       = var.source_cidr
  source_port_range = var.source_port_range
  dest_cidr         = var.dest_cidr
  dest_port_range   = var.dest_port_range
  priority          = var.priority

}