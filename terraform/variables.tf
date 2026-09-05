variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "AWS Deployment Region"
}

variable "cluster_name" {
  type        = string
  default     = "prod-eks-cluster"
  description = "EKS Cluster Name"
}

variable "eks_role_arn" {
  type        = string
  default     = "arn:aws:iam::123456789012:role/EKSClusterRole"
  description = "IAM Role ARN for EKS"
}
