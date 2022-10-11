resource "aws_instance" "gitlab_instance" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_size
  user_data     = file("user_data.yaml")
  key_name      = var.project_key
  vpc_security_group_ids = [
    aws_default_security_group.gitlab.id
  ]

  root_block_device {
    volume_size           = var.instnace_root_volume_size
    volume_type           = var.instance_root_volume_type
    delete_on_termination = var.instance_root_volume_delete_on_termination
  }
  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("${path.module}/${var.project_key}.pem")
    timeout     = "2m"
    host        = self.public_ip
  }
  provisioner "remote-exec" {
    inline = [
      "cd /tmp",
      "sudo chmod +x gitlab_bootstrap.sh",
      "sudo /bin/bash -c ./gitlab_bootstrap.sh ${self.public_dns} ${var.gitlab_root_password}"
    ]
  }
  tags = {
    Name = var.project
  }
}
