terraform {
 backend "remote" {
   hostname = "app.terraform.io"
   organization = "ejcl"

   workspaces {
     name = "udemy_test"
   }
 }
}

# terraform {
#   required_providers {
#     aws = {
#       source = "hashicorp/aws"
#       version = "3.4.0"
#     }
#   }
# }

provider "aws" {
  region = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_s3_bucket" "test" {
  bucket_prefix = "test-"
}
