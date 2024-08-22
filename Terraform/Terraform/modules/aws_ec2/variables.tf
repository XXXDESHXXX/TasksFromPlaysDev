variable "env" {
  default = "default"
}

variable "ami" {
  default = "ami-0d09654d0a20d3ae2"
}

variable "type" {
  default = "t2.micro"
}

variable "key" {
  default = "Task_6.pem"
}

variable "count_public_instances" {
  default = 1
}

variable "count_private_instances" {
  default = 1
}

variable "public_subnet_id" {}
variable "public_sg_id" {}
variable "private_subnet_id" {}