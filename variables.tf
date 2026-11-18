variable "aws_region" {
  description = "AWS region for the EKS cluster."
  type        = string
  default     = "ap-south-1"
}

variable "cluster_name" {
  description = "Name of the EKS cluster."
  type        = string
  default     = "platform-sandbox"
}

variable "kubernetes_version" {
  description = "Kubernetes version supported by the selected EKS module and region."
  type        = string
  default     = "1.31"
}

variable "vpc_cidr" {
  description = "VPC CIDR range."
  type        = string
  default     = "10.40.0.0/16"
}

variable "public_access_cidrs" {
  description = "CIDRs allowed to reach the public Kubernetes API endpoint. Set to your trusted public IP /32."
  type        = list(string)
  default     = ["203.0.113.10/32"]
}
