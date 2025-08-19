variable "ami_id" {
  description = "ID of AMI Image"
  default = ""
  type = string
}
variable "range" {
  description = "range of CIDR of Vnet"
  default = ""
  type = string
}
variable "cidr_block_1" {
  description = "range of subnet1"
  default = ""
  type = string
}
variable "instance_name" {
  description = "name of the instance"
  default = null
  type = string
}
variable "instance_type_value" {
  description = "new instance"
  default = ""
  type = string
}
variable "cidr_block_2" {
  description = "range of subnet2"
  default = ""
  type = string
}
variable "instance_type" {
    description = "size of instance"
    default = ""
    type = string
}
variable "aws_region" {
  description = "region of env"
  default = ""
  type = string
}
variable "vpc_name"{
  description = "name of vpc"
  default = ""
  type = string
}
