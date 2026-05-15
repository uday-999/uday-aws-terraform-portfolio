terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_vpc" "main_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "terraform-learning-vpc"
  }
}

resource "aws_s3_bucket" "learning_bucket" {
  bucket = "uday-tf-s3-999-2026"

  tags = {
    Name        = "Terraform Learning Bucket"
    Environment = "Learning"
    VPC_ID      = aws_vpc.main_vpc.id
  }
}