resource "aws_security_group" "public_security_group" {
  name        = "public_security_group"
  description = "Security group for PUBLIC servers"
  vpc_id      = var.vpc_id

  ingress {
    description = var.ssh_access.name
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.ssh_access.ip]
  }
  ingress {
    description = "Accept PostgreSQL connections"
    from_port = 5432
    to_port = 5432
    protocol = "tcp"
    cidr_blocks = [var.ssh_access.ip]
  }

  egress {
    description = "All traffic in all network"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    "Name" = "${var.env}-public-security-group"
  }
}