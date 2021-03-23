#variable "sg_name" {}
#variable "region" {}

#module "security_group" {
#  source = "./modules/security_group"
#}

variable "sg_name" {
  default = "tf_mod_sg"
}

variable "ambiente" {
  default = "outros"
}