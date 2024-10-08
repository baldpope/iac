output "srx_id" {
    description = "ID of the SRX appliance"
    value = data.junos_system_information.srx.id
}

output "srx_hardware_model" {
    value = data.junos_system_information.srx.hardware_model
}

output "srx_os_name" {
    value = data.junos_system_information.srx.os_name
}

output "srx_os_version" {
    value = data.junos_system_information.srx.os_version
}

output "srx_serial_number" {
    value = data.junos_system_information.srx.serial_number
}

output "hostname" {
    value = junos_system.hostname.host_name
  
}