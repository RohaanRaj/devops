terraform {
  backend "s3" {
    bucket         = "rohanraaj1" # change this
    key            = "rohan/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    use_lockfile = true
  }
}
