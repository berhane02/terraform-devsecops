resource "aws_iam_role" "jenkins_role" {
  name = var.role_name

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      }
    ]
  })

  tags = var.tags
}

resource "aws_iam_instance_profile" "jenkins_profile" {
  name = var.instance_profile_name
  role = aws_iam_role.jenkins_role.name

  tags = var.tags
}

resource "aws_iam_role_policy" "jenkins_policy" {
  name = var.policy_name
  role = aws_iam_role.jenkins_role.id

  policy = var.policy_document
}

