provider "aws" {
    region = "${var.region}"
    profile = "terraform-tiagotest-user"
}

#other option for authentication

#provider "aws" {
#  region = var.region
#
#  access_key = var.aws_access_key
#  secret_key = var.aws_secret_key
#
#}