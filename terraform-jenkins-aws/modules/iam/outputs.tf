output "role_id" {
  description = "ID of the IAM role"
  value       = aws_iam_role.jenkins_role.id
}

output "role_arn" {
  description = "ARN of the IAM role"
  value       = aws_iam_role.jenkins_role.arn
}

output "role_name" {
  description = "Name of the IAM role"
  value       = aws_iam_role.jenkins_role.name
}

output "instance_profile_name" {
  description = "Name of the IAM instance profile"
  value       = aws_iam_instance_profile.jenkins_profile.name
}

output "instance_profile_arn" {
  description = "ARN of the IAM instance profile"
  value       = aws_iam_instance_profile.jenkins_profile.arn
}

output "policy_id" {
  description = "ID of the IAM policy"
  value       = aws_iam_role_policy.jenkins_policy.id
}

