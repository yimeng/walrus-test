module "proxmox" {
  source = "./modules/proxmox"
  clone_template = "104"
  vm_name = "k8s"
  vm_count = 1
  cpu = 4
  memory = 8192

}
