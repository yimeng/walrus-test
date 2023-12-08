variable "virtual_environment_endpoint" {
  type        = string
  description = "The endpoint for the Proxmox Virtual Environment API (example: https://host:port)"
  default = ""
}

variable "virtual_environment_password" {
  type        = string
  description = "The password for the Proxmox Virtual Environment API"
  default = ""
}

variable "virtual_environment_username" {
  type        = string
  description = "The username and realm for the Proxmox Virtual Environment API (example: root@pam)"
  default = ""
}

variable "clone_template" {
  type = number
  default = 104
}

variable "vm_name" {
  type = string
  default = "test-vm"
}
variable "vm_count" {
  type = number
  default = 1
}
variable "cpu" {
  type = number
  default = 2
}
variable "memory" {
  type = number
  default = 8
}
