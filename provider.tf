//init the terraform congfig
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.70.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.33.0"
    }
  }
}

provider "aws" {
  region  = "ap-northeast-2"
  # profile = "vti"
}
provider "random" {}
