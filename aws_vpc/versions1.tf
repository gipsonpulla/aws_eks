terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.41.0"
    }
  }
  # Remote Backend
  backend "s3" {
    bucket       = "tfstate-dev-us-east-1-gpulla"
    key          = "vpc/dev/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true
  }
}

provider "aws" {
  # Configuration options
  region = var.aws_region
}