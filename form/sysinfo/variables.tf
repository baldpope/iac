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

variable "system_hostname" {
    description = "set hostname for the chassis"
}