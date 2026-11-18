# AWS EKS Platform with Terraform

This repository provisions an Amazon EKS control plane and managed node group using the upstream Terraform EKS module. It is intended as a learning and sandbox platform for understanding cluster networking, IAM integration and managed Kubernetes capacity.

## Components
- Dedicated VPC with public and private subnets across two Availability Zones
- EKS control plane with private endpoint access enabled and public endpoint access restricted to configurable CIDRs
- Managed node group placed in private subnets
- Cluster and node IAM roles managed by the EKS module
- Cluster logging enabled for API, audit and authenticator events

## Requirements
Terraform >= 1.6, AWS CLI, kubectl, and credentials for a disposable AWS account.

## Usage
1. Copy `terraform.tfvars.example` to `terraform.tfvars`.
2. Set an approved public CIDR for temporary administrative access, or disable public endpoint access and use a private network path.
3. Run `terraform init`, `terraform fmt -check -recursive`, `terraform validate`, then inspect `terraform plan`.
4. Apply only after reviewing the plan.
5. Configure kubectl using the command shown in the Terraform output.

## Cost warning
EKS control plane, EC2 worker nodes, NAT Gateways, load balancers and data transfer can incur charges. Destroy the lab when finished. This is a baseline sandbox design, not a complete production landing zone.

## Status
Configuration is committed for review. No AWS cluster deployment is claimed. Validate module/provider compatibility and the plan in your own sandbox before use.
