variable "vpc_id" {
  description = "VPC ID where the security group will be created"
  type        = string
}

variable "security_group_name" {
  description = "Name of the security group"
  type        = string
  default     = "jenkins_sg"
}

variable "security_group_description" {
  description = "Description of the security group"
  type        = string
  default     = "Allow Jenkins Traffic"
}

variable "jenkins_port" {
  description = "Port for Jenkins access"
  type        = number
  default     = 8081
}

variable "jenkins_cidr_blocks" {
  description = "CIDR blocks allowed to access Jenkins"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "ssh_cidr_blocks" {
  description = "CIDR blocks allowed to SSH"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default     = {}
}

