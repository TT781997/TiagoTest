variable "region" {   
    type    = string 
    default = "eu-central-1"
}

variable "name" {   
    type    = string  
    default = "tiagotest"
}

#Network.tf
variable "availability_zones_count" {
    default = 2
}
data "aws_availability_zones" "available" {
  state = "available"
}

variable "vpc_cidr" {
    type    = string
    default = "10.1.0.0/16"
}         
variable "subnet_cidr_bits" {
    type    = number
    default = 8
}

#tags
variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default = {
    "Project"     = "TiagoTest"
    "Environment" = "SandboxTT"
    "Owner"       = "Tiago Teixeira"
  }
}

#ec2.tf
#variable "ami" {
#    type = string
#    default  = "ami-0e2821e7e40783fd1"
#}
