output "instance_public_dns" {
  value = "http://${aws_instance.gitlab_instance.public_dns}"
}

output "instance_public_ip" {
  value = aws_instance.gitlab_instance.public_ip
}

output "runner_public_ip" {
  value = aws_instance.gitlab_runner.public_ip
}

output "registration_token" {
  value = data.external.registration_token.result.registration_token
}
