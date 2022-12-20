variable "cluster_name" {
  default = "eks-module"
}

variable "cluster_version" {
  default = "1.22"
}

variable "eks_vpc_cdir" {
  default = "10.0.0.0/16"
}

variable "fargate_profiles" {
  type        = any
  description = "(Optional) An Fargate Profile block as defined below."
  default     = null
}