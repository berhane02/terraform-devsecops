variable "role_name" {
  description = "Name of the IAM role"
  type        = string
  default     = "jenkins_role"
}

variable "instance_profile_name" {
  description = "Name of the IAM instance profile"
  type        = string
  default     = "jenkins_profile"
}

variable "policy_name" {
  description = "Name of the IAM policy"
  type        = string
  default     = "jenkins_policy"
}

variable "policy_document" {
  description = "IAM policy document (JSON string)"
  type        = string
  default     = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = "*"
        Resource = "*"
      }
    ]
  })
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default     = {}
}

