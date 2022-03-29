#alicloud_sag_acl
acl_name   = "tf-update-test-sag"

#alicloud_cloud_storage_gateway_gateway
rule_description  = "tf-update-test-sag"
policy            = "drop"
ip_protocol       = "tcp"
direction         = "out"
source_cidr       = "0.0.0.0/0"
source_port_range = "80/80"
dest_cidr         = "0.0.0.0/0"
dest_port_range   = "80/80"
priority          = 2
