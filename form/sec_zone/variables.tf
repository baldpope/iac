variable "junos_host" {
    type = string
    description = "the management IP address of the device you want to manage"
}

variable "junos_user" {
    default = "terraform"
    description = "user for terraform netconf configurations"  
}

variable "sshkeyfile" {
    description = "path to private key"
}

variable "interface_name" {
    description = "logical interface id eg: ge-0/0/0.0"
}

variable "interface_description" {
    description = "verbal description for interface"
  
}

variable "ingress_protocol_list" {
    type = list
    description = "list of allowed inbound protocols"
}

variable "ingress_service_list" {
    type = list
    description = "list of allowed inbound services"
}

variable "family_inet_block" {
    description = "JSON block for inet definition"
    type = string
    default = "address { cidr_ip = 192.168.32.1/24 }"
}

variable "sec_zone" {
    description = "name for security zone"
  
}