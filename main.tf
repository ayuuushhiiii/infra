provider "aws" {
  region = var.aws_region
}

module "vpc_creation" {
  source = "./VPC_Module"
  vpc_range = var.vpc_range
#  vpc_name = var.vpc_name
  aws_region = var.aws_region
  
}
module "subnet1_creation" {
  source = "./subnet_module"
  vpc_id = module.vpc_creation.vpc_id
  cidr_block = var.cidr_block_1
  aws_region = var.aws_region
  Subnet_Name= var.Subnet_1_Name
}
module "subnet2_creation" {
  source = "./subnet_module"
  vpc_id = module.vpc_creation.vpc_id
  cidr_block = var.cidr_block_2
  aws_region = var.aws_region
  Subnet_Name= var.Subnet_1_Name
}
module "ec2_instance" {
    source = "./EC2"
   instance_type_value = var.instance_type
   ami_id = var.ami_id
   instance_name = var.instance_name
   subnet_id     = module.subnet1_creation.subnet_id
}


