terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "example-alleoko" {
  ami           = "ami-0435fcf800fb5418d" # Example AMI ID for ap-southeast-1
  instance_type = "t2.micro"
}