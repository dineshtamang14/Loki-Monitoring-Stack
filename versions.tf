terraform {
  # terraform version
  # to allow all the terraform minor versions
  required_version = "~> 1.4"

  # required providers and their versions
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.62" # optional but recommanded
    }
    helm = {
      source  = "hashicorp/helm"
      version = "~> 2.9"
    }
  }

  # Adding Backend as s3 for Remote State Storage
  backend "s3" {
    bucket = "terraform-ekscluster-states"
    key    = "dev/monitoring-stack/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = var.aws_region
}
