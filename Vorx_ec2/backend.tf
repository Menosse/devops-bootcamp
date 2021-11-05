terraform {
  backend "s3" {
    bucket = "vorx-tf"
    key    = "ec2-jenkins.tfstate"
    region = "us-east-1"
  }
}
