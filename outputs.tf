

output "instance_public_dns" {
  value = aws_instance.gitlab_instance.public_dns
}

output "instance_public_ip" {
  value = aws_instance.gitlab_instance.public_ip
}
