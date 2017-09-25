module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "elasticsearch_vpc"
  cidr = "${var.vpc_cidr}"

  azs             = ["${split(",", var.availability_zones)}"]
  private_subnets = "${var.private_subnets_cidrs}"
  public_subnets  = "${var.public_subnets_cidrs}"

  enable_nat_gateway = true
  enable_dns_support = true

}