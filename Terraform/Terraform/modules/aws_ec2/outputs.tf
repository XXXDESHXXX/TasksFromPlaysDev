output "public_instances_ids" {
  value = aws_instance.public_instances[*].id
}

output "private_instances_ids" {
  value = aws_instance.private_instance[*].id
}