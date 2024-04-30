#alicloud_sag_acl
acl_name   = "tf-update-test-sag"

#alicloud_cloud_storage_gateway_gateway
rule_description  = "tf-update-test-sag"
policy            = "drop"
ip_protocol       = "UDP"
direction         = "out"
source_cidr       = "10.10.3.0/24"
source_port_range = "20/20"
dest_cidr         = "192.168.3.0/24"
dest_port_range   = "1/20"
priority          = 2
