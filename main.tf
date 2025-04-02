terraform {
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

resource "aws_instance" "example" {
  ami           = "ami-00a929b66ed6e0de6" # Replace with your desired AMI
  instance_type = "t2.micro"

  tags = {
    Name = "example-instance"
  }
}
