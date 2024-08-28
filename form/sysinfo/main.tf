terraform {
  required_providers {
    junos = {
      source = "jeremmfr/junos"
    }
  }
}

# Configure the Junos Provider
provider "junos" {
  ip         = var.junos_host
  sshkey_pem = file(var.sshkeyfile)
  username      = var.junos_user
}

data "junos_system_information" "srx" {}

resource "junos_system" "hostname" {
  host_name = var.system_hostname
}