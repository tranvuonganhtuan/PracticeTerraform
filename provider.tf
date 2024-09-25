//init the terraform congfig
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.67.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.10"
    }
  }
}

provider "aws" {
  //profile = "default"
  region = "ap-northeast-2"
}