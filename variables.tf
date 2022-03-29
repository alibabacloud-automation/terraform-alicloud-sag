#################
# Sag Acl
#################
variable "create_acl" {
  description = "Controls if acl instance be created"
  type        = bool
  default     = false
}

variable "acl_name" {
  description = "(Required) The name of the ACL instance. The name can contain 2 to 128 characters including a-z, A-Z, 0-9, periods, underlines, and hyphens. The name must start with an English letter, but cannot start with http:// or https://."
  type        = string
  default     = "tf-test-sag"
}

#################
# Sag Acl Rule
#################
variable "create_acl_rule" {
  description = "Controls if acl rule be created"
  type        = bool
  default     = false
}

variable "acl_id" {
  description = "The ID of the ACL."
  type        = string
  default     = ""
}

variable "rule_description" {
  description = "The description of the ACL rule. It must be 1 to 512 characters in length."
  type        = string
  default     = ""
}

variable "policy" {
  description = "(Required) The policy used by the ACL rule. Valid values: accept|drop."
  type        = string
  default     = "accept"

  validation {
    condition     = contains(["accept", "drop"], var.policy)
    error_message = "Allowed values are accept, drop."
  }
}

variable "ip_protocol" {
  description = "(Required) The protocol used by the ACL rule. The value is not case sensitive."
  type        = string
  default     = "ALL"
}

variable "direction" {
  description = "(Required) The direction of the ACL rule. Valid values: in|out."
  type        = string
  default     = "in"

  validation {
    condition     = contains(["in", "out"], var.direction)
    error_message = "Allowed values are in or out."
  }
}

variable "source_cidr" {
  description = "(Required) The source address. It is an IPv4 address range in the CIDR format."
  type        = string
  default     = "0.0.0.0/0"
}

variable "source_port_range" {
  description = "(Required) The range of the source port. Valid value: 80/80."
  type        = string
  default     = "80/80"
}

variable "dest_cidr" {
  description = "(Required) The destination address. It is an IPv4 address range in CIDR format."
  type        = string
  default     = "0.0.0.0/0"

}

variable "dest_port_range" {
  description = "(Required) The range of the destination port. Valid value: 80/80."
  type        = string
  default     = "80/80"
}

variable "priority" {
  description = "The priority of the ACL rule. Value range: 1 to 100."
  type        = number
  default     = null
}
