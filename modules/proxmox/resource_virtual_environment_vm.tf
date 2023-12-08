resource "proxmox_virtual_environment_vm" "example" {
  count = "${var.vm_count}"
  name  = "${var.vm_name}${count.index + 1}"
  node_name = "homelab"
  # migrate   = true // migrate the VM on node change
  # vm_id     = 2041
  tags      = ["terraform", "ubuntu"]

  clone {
    vm_id = "${var.clone_template}"
    full = false
  }
  # machine = "q35"
  cpu {
    cores = "${var.cpu}"
  }

  memory {
    dedicated = "${var.memory}"
  }
  disk {
    interface    = "scsi0"
    size         = 40
    datastore_id = "local-lvm"
    # file_format  = "qcow2"
  }
}

  # count = "${var.vm_count}"
  # name  = "${var.vm_name}${count.index + 1}"
  # vmid   = "${count.index + var.vmid_begin}"

