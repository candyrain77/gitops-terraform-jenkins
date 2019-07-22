# Terraform state will be stored in S3
terraform {
  backend "s3" {
    bucket = "terraform-bucket-vira"
    key    = "terraform.tfstate"
    region = "eu-west-1"
  }
}

# Use AWS Terraform provider
provider "aws" {
  region = "eu-west-1"
}

# Create EC2 instance
resource "aws_vpc" "main" {
  cidr_block = "10.80.250.0/24"
  enable_dns_hostnames = "true"
  enable_dns_support = "true"
  tags ={
    Name        = "Vpc vira test"
  }
}
