data "aws_eks_cluster" "cluster" {
  name = module.eks.cluster_id
}

data "aws_eks_cluster_auth" "cluster" {
  name = module.eks.cluster_id
}

module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "17.1.0"

  cluster_name    = var.project_name
  cluster_version = var.eks_version
  subnets         = module.vpc.private_subnets
  vpc_id          = module.vpc.vpc_id

  worker_groups = [{
    instance_type = var.eks_node_type
    asg_min_size  = var.eks_min_nodes
    asg_max_size  = var.eks_min_nodes
  }]
}
