variable "region" {
  default = "ap-southeast-2"
}
variable "http_port" {
  default = 80
}

variable "ssh_port" {
  default = 22
}
variable "my_system" {
  default = "101.100.129.251/32"
}
variable "ami" {
  default = "ami-050e1ec030abb8dde"
}
variable "instance_type" {
  default = "t2.micro"
}
variable "azs" {
  default = ["ap-southeast-2a", "ap-southeast-2b", "ap-southeast-2c"]
}
variable "environment" {
description= "type of environment , prod or stg or dev "
default="stg"
}

variable "vpc_id" {
description = "provide vpc_id"
}

variable "cluster" {

}