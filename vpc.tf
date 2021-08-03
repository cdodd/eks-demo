module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.2.0"

  name                 = var.project_name
  cidr                 = var.vpc_cidr_range
  azs                  = var.availability_zones
  private_subnets      = var.private_subnet_cidr_ranges
  public_subnets       = var.public_subnet_cidr_ranges
  enable_nat_gateway   = var.enable_nat_gateway
  single_nat_gateway   = var.single_nat_gateway
  enable_dns_hostnames = var.enable_dns_hostnames

  tags = {
    Name = var.project_name
  }

  # EKS private subnets
  private_subnet_tags = {
    "kubernetes.io/role/internal-elb" = "1"
  }

  # EKS public subnets
  public_subnet_tags = {
    "kubernetes.io/role/elb" = "1"
  }
}
