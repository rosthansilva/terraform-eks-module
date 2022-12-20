module "eks" {
  source           = "./modules/eks-module"
  cluster_name     = teste
  fargate_profiles = var.fargate_profiles
}