terraform {
  backend "s3" {
    bucket         = "tiagotest-terraform-bk"
    key            = "terraform.tfstate"
    region         = "eu-central-1"
    encrypt        = true
    acl            = "bucket-owner-full-control"
    profile        = "terraform-tiagotest-user"
  }
}

