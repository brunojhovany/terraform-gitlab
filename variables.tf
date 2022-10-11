variable "project" {
  type        = string
  default     = "gitlab"
  description = "name of project"
}


variable "project_key" {
  type        = string
  description = "ssh key name"
}

variable "region" {
  type        = string
  default     = "us-east-1"
  description = "aws region"
}

variable "gitlab_root_password" {
  type        = string
  description = "gitlab root user password"
}

variable "webfocus_role" {
  type        = string
  description = "arn webfocus role"
}

variable "instance_size" {
  type        = string
  default     = "c5.xlarge"
  description = "The EC2 instance size"
}

variable "instnace_root_volume_size" {
  type        = string
  default     = "15"
  description = "The volume size for the root volume in GiB"
}

variable "instance_root_volume_type" {
  type        = string
  default     = "gp3"
  description = "The type of data storage: standard, gp2, io1"
}

variable "instance_root_volume_delete_on_termination" {
  default     = true
  description = "Delete the root volume on instance termination."
}
