resource "aws_instance" "public_instances" {
  count                  = var.count_public_instances
  ami                    = var.ami
  instance_type          = var.type
  subnet_id              = var.public_subnet_id[0]
  vpc_security_group_ids = [var.public_sg_id]
  key_name               = var.key

  tags = {
    "Name" = "${var.env}-public-${count.index + 1}"
  }
}

resource "aws_instance" "private_instance" {
  count                  = var.count_private_instances
  ami                    = var.ami
  instance_type          = var.type
  subnet_id              = var.private_subnet_id[0]
  vpc_security_group_ids = [var.public_sg_id]
  key_name               = var.key

  tags = {
    "Name" = "${var.env}-private-${count.index + 1}"
  }
}