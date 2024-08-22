resource "aws_db_subnet_group" "db_subnet_group" {
  name       = "${var.env}-subnet-group"
  subnet_ids = var.public_subnet_id

  tags = {
    "Name" = "${var.env}-db-subnet-group"
  }
}

resource "aws_db_instance" "PostgreSQL" {
  identifier             = "${var.env}-postgresql"
  instance_class         = var.instance_class
  allocated_storage      = var.allocated_storage
  engine                 = "postgres"
  engine_version         = var.engine_version
  vpc_security_group_ids = [var.public_sg_id]
  db_subnet_group_name   = aws_db_subnet_group.db_subnet_group.name
  skip_final_snapshot    = true
  multi_az               = false
  publicly_accessible    = true
  username               = var.username
  password               = var.password
}