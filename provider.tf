//init the terraform congfig
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.67.0"
    }
  }
}

# provider "aws" {
#   //profile = "default"
#   region = "ap-northeast-2"
# }

provider "aws" {
  region = "us-west-2"
}