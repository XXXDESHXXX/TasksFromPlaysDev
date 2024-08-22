output "rds_hostname" {
  value = aws_db_instance.PostgreSQL.address
}

output "rds_port" {
  value = aws_db_instance.PostgreSQL.port
}
