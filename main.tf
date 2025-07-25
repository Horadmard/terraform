terraform {
  required_providers {
    proxmox = {
      source = "telmate/proxmox"
    }
  }
}

provider "proxmox" {
  pm_api_url          = "https://192.168.1.135:8006/api2/json"
  pm_api_token_id     = "terraform@pam!terraform"
  pm_api_token_secret = "ce2de5e4-ced7-424f-80ad-7c84514b79fc"
  pm_tls_insecure     = true
}

resource "proxmox_vm_qemu" "vm-instance" {
  name        = "vm-instance"
  target_node = "EliteBook"
  clone       = "ubuntu-22.04.5-server"
  full_clone  = true
  cores       = 2
  memory      = 2048

  disk {
    size    = "32G"
    type    = "scsi"
    storage = "local-lvm"
    discard = "on"
  }

  network {
    model     = "virtio"
    bridge    = "vmbr0"
    firewall  = false
    link_down = false
  }

}
