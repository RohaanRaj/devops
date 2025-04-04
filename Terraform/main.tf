provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "rohanraj1" {
  instance_type = "t2.micro"
  ami = "ami-00a929b66ed6e0de6" # change this
}

#resource "aws_s3_bucket" "s3_bucket" {
#  bucket = "rohanraaj1" # change this
#}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
