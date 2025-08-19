provider "aws" {
  region = var.aws_region
}

module "vpc_creation" {
  source = "./VPC_Module"
  vpc_block = var.vpc_range
  vpc_git = var.vpc_name
  region = var.aws_region
  
}
module "subnet1_creation" {
  source = "./subnet_module"
  vpc_id = module.vpc_creation.vpc_id
  cidr_block = var.cidr_block_1
  aws_region = var.aws_region
}
module "subnet2_creation" {
  source = "./subnet_module"
  vpc_id = module.vpc_creation.vpc_id
  cidr_block = var.cidr_block_2
  aws_region = var.aws_region
}
module "ec2_instance" {
    source = "./EC2"
   instance_type_value = var.instance_type_value
   ami_id = var.ami_id
   instance_name = var.instance_name
}


