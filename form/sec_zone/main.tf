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

resource "junos_security_zone" "sec_zone" {
    name                = var.sec_zone
    inbound_protocols   = var.ingress_protocol_list
    inbound_services    = var.ingress_service_list

}

resource "junos_interface_logical" "interface" {
    name            = var.interface_name
    description     = var.interface_description
    security_zone   = junos_security_zone.sec_zone.name
    family_inet { var.family_inet_block }
}

