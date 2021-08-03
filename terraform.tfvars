# General variables
project_name = "eks-example"

# VPC variables
vpc_cidr_range             = "10.101.0.0/16"
availability_zones         = ["us-east-1a", "us-east-1b"]
public_subnet_cidr_ranges  = ["10.101.0.0/20", "10.101.16.0/20"]
private_subnet_cidr_ranges = ["10.101.32.0/20", "10.101.48.0/20"]
enable_nat_gateway         = true
single_nat_gateway         = true
enable_dns_hostnames       = true

# EKS variables
eks_version       = "1.21"
eks_node_type     = "m4.large"
eks_min_nodes     = 1
eks_max_nodes     = 2
eks_desired_nodes = 1
