terraform {
  backend "s3" {
    bucket = "vorx-tf"
    key    = "dev-vpc-terraform.tfstate"
    region = "us-east-1"
  }
}