variable "env" {
  default = "default"
}

variable "instance_class" {
  default = "db.t3.micro"
}

variable "allocated_storage" {
  default = 5
}

variable "engine_version" {
  default = "16.4"
}

variable "username" {
  default = "postgres"
}

variable "password" {
  default = "1122334455"
}

variable "public_subnet_id" {}
variable "public_sg_id" {}