//init the terraform congfig
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">= 4.47"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.10"
    }
  }
}

provider "aws" {
  region  = "us-west-1"
  # profile = "vti"
}
provider "random" {}
