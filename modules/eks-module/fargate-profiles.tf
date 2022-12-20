resource "aws_eks_fargate_profile" "main" {
  for_each               = var.fargate_profiles == null ? {} : var.fargate_profiles
  inetrator              = fargate
  cluster_name           = aws_eks_cluster.cluster.name
  fargate_profile_name   = fargate.value.profile_name
  pod_execution_role_arn = aws_iam_role.eks-fargate-profile.arn

  # These subnets must have the following resource tag: 
  # kubernetes.io/cluster/<CLUSTER_NAME>.
  subnet_ids = [
    aws_subnet.private-us-east-1a.id,
    aws_subnet.private-us-east-1b.id
  ]

  selector {
    namespace = fargate.value.namespace
  }
}
