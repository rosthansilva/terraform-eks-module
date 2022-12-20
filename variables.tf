variable "region" {}
variable "main_vpc_cidr" {}
variable "public_subnets" {}
variable "private_subnets" {}

variable "fargate_profiles" {
  type = map(string)
}