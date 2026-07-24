terraform {
  required_providers {
    aws = {
      version = "~> 6.0"
      source  = "hashicorp/aws"
    }
    helm = {
      version = "~> 3.0"
      source  = "hashicorp/helm"
    }
  }
  required_version = ">= 1"
}
