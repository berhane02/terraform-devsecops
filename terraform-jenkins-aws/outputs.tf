# Network Outputs
output "security_group_id" {
  description = "ID of the Jenkins security group"
  value       = module.network.security_group_id
}

output "security_group_name" {
  description = "Name of the Jenkins security group"
  value       = module.network.security_group_name
}

# Compute Outputs
output "instance_id" {
  description = "ID of the EC2 instance"
  value       = module.compute.instance_id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = module.compute.instance_public_ip
}

output "instance_public_dns" {
  description = "Public DNS name of the EC2 instance"
  value       = module.compute.instance_public_dns
}

output "instance_private_ip" {
  description = "Private IP address of the EC2 instance"
  value       = module.compute.instance_private_ip
}

# IAM Outputs
output "iam_role_arn" {
  description = "ARN of the IAM role"
  value       = module.iam.role_arn
}

output "iam_instance_profile_name" {
  description = "Name of the IAM instance profile"
  value       = module.iam.instance_profile_name
}
