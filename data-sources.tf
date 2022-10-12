data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

data "http" "clientip" {
  url = "https://ipv4.icanhazip.com/"
}

data "external" "registration_token" {
  program = ["${path.module}/registration_token.sh", "${aws_instance.gitlab_instance.public_ip}"]
  depends_on = [
    aws_instance.gitlab_instance
  ]
}
