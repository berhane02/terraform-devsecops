output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.jenkins.id
}

output "instance_arn" {
  description = "ARN of the EC2 instance"
  value       = aws_instance.jenkins.arn
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.jenkins.public_ip
}

output "instance_public_dns" {
  description = "Public DNS name of the EC2 instance"
  value       = aws_instance.jenkins.public_dns
}

output "instance_private_ip" {
  description = "Private IP address of the EC2 instance"
  value       = aws_instance.jenkins.private_ip
}

output "ami_id" {
  description = "ID of the AMI used for the instance"
  value       = data.aws_ami.amazon_linux.id
}

