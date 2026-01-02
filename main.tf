terraform {
  cloud {
    organization = "Arun-Kumar-Ravi-08"

    workspaces {
      name = "tf-cloud-s3"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "terraform-cloud-s3-369852"
}
