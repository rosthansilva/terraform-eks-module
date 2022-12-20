resource "aws_vpc" "main" {
  cidr_block = var.eks_vpc_cdir

  # Must be enabled for EFS
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = var.tags
}