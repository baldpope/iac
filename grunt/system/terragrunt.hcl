terraform  {
    source = "https://github.com/baldpope/iac.git/form/sysinfo"
    }

inputs = {
    junos_host = "192.168.32.252"
    junos_user = "terraform"
    sshkeyfile = "id_rsa"
    system_hostname = "srx.ezlan.io"
}
