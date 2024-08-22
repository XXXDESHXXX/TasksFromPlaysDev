variable "env" {
  default = "default"
}

variable "ssh_access" {
  type = object({
    ip    = string
    name  = string
  })
  default = {
    ip    = "93.85.179.105/32"
    name  = "Allow SSH from my IP"
  }
}


variable "vpc_id" {}
variable "vpc_cidr" {}