variable "project_name" {
  type = string
}

variable "vpc_cidr_range" {
  type = string
}

variable "availability_zones" {
  type = list(string)
}

variable "public_subnet_cidr_ranges" {
  type = list(string)
}

variable "private_subnet_cidr_ranges" {
  type = list(string)
}

variable "enable_nat_gateway" {
  type = bool
}

variable "single_nat_gateway" {
  type = bool
}

variable "enable_dns_hostnames" {
  type = bool
}

variable "eks_version" {
  type = string
}

variable "eks_node_type" {
  type = string
}

variable "eks_min_nodes" {
  type = number
}

variable "eks_max_nodes" {
  type = number
}

variable "eks_desired_nodes" {
  type = number
}
