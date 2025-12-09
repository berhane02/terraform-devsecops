variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.xlarge"
}

variable "key_name" {
  description = "Name of the AWS key pair"
  type        = string
}

variable "iam_instance_profile_name" {
  description = "Name of the IAM instance profile"
  type        = string
}

variable "security_group_ids" {
  description = "List of security group IDs to attach to the instance"
  type        = list(string)
}

variable "user_data" {
  description = "User data script to run on instance launch"
  type        = string
  default     = ""
}

variable "instance_name" {
  description = "Name tag for the EC2 instance"
  type        = string
  default     = "Jenkins"
}

variable "ami_filter_name" {
  description = "AMI filter name pattern"
  type        = string
  default     = "al2023-ami-2023.3.20240131.0-kernel-6.1-x86_64*"
}

variable "ami_owner" {
  description = "AMI owner ID"
  type        = string
  default     = "amazon"
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default     = {}
}

